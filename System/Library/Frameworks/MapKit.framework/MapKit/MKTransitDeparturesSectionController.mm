@interface MKTransitDeparturesSectionController
- (BOOL)_isDateLastDeparture:(id)departure withNextDepartureDate:(id)date forSequence:(id)sequence;
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)showOperatingHours;
- (MKTransitDepartureServiceGapFormatter)serviceGapFormatter;
- (MKTransitDeparturesSectionController)init;
- (MKTransitDeparturesSectionController)initWithMapItem:(id)item system:(id)system departureSequenceContainer:(id)container;
- (MKTransitDeparturesSectionController)initWithMapItem:(id)item system:(id)system direction:(id)direction;
- (id)_nextLastDepartureDateForSequence:(id)sequence afterDate:(id)date;
- (id)_pagingFilter;
- (id)sequenceForRow:(int64_t)row outIsNewLine:(BOOL *)line outNextLineIsSame:(BOOL *)same;
- (id)sequences;
- (id)serviceGapDescriptionForRow:(int64_t)row;
- (void)_buildRows;
- (void)_serviceGapDate:(id *)date string:(id *)string forSequence:(id)sequence withDepartureIndex:(unint64_t)index;
- (void)_setNeedsBuildRows;
- (void)setDepartureCutoffDate:(id)date;
@end

@implementation MKTransitDeparturesSectionController

- (id)serviceGapDescriptionForRow:(int64_t)row
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitDeparturesSectionController *)self _buildRows];
  }

  serviceGapStrings = self->_serviceGapStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:row];
  v7 = [(NSDictionary *)serviceGapStrings objectForKey:v6];

  return v7;
}

- (void)_serviceGapDate:(id *)date string:(id *)string forSequence:(id)sequence withDepartureIndex:(unint64_t)index
{
  v67 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  if ([sequenceCopy departureTimeDisplayStyle] == 5)
  {
    if (date)
    {
      *date = 0;
    }

    if (string)
    {
      *string = 0;
    }

    goto LABEL_46;
  }

  dateCopy = date;
  expiredHighFrequencyCutoffDate = [(MKTransitSectionController *)self expiredHighFrequencyCutoffDate];
  if (expiredHighFrequencyCutoffDate && ![(MKTransitDeparturesSectionController *)self departuresAreVehicleSpecific])
  {
    expiredHighFrequencyCutoffDate2 = [(MKTransitSectionController *)self expiredHighFrequencyCutoffDate];
  }

  else
  {
    expiredHighFrequencyCutoffDate2 = [(MKTransitSectionController *)self departureCutoffDate];
  }

  v12 = expiredHighFrequencyCutoffDate2;
  v13 = [sequenceCopy departuresValidForDate:expiredHighFrequencyCutoffDate2];

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v62 + 1) + 8 * i);
        departureDate = [v20 departureDate];

        if (departureDate)
        {
          departureDate2 = [v20 departureDate];
          [v14 addObject:departureDate2];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v17);
  }

  departureCutoffDate = [(MKTransitSectionController *)self departureCutoffDate];
  v24 = [MKTransitDeparturesCell displayableCountdowDepartureDatesFromDates:v14 withReferenceDate:departureCutoffDate];

  lastObject = [v24 lastObject];
  if (lastObject)
  {
    v26 = [sequenceCopy firstDepartureAfterDate:lastObject];
    departureDate3 = [v26 departureDate];
    v28 = [(MKTransitDeparturesSectionController *)self _isDateLastDeparture:lastObject withNextDepartureDate:departureDate3 forSequence:sequenceCopy];

    v60 = v26;
    if (v28)
    {
      v29 = lastObject;
      stringCopy2 = string;
      if ([v24 count] != 1)
      {
        serviceGapFormatter = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
        lastDepartureString = [serviceGapFormatter lastDepartureAtStringFromDate:v29];
LABEL_31:
        v32 = lastDepartureString;
        goto LABEL_32;
      }

      serviceGapFormatter2 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
      serviceGapFormatter = serviceGapFormatter2;
      if (!v26)
      {
        lastDepartureString = [serviceGapFormatter2 lastDepartureString];
        goto LABEL_31;
      }

      departureDate4 = [v26 departureDate];
      v32 = [serviceGapFormatter lastDepartureUntilStringFromDate:departureDate4];
    }

    else
    {
      departureDate5 = [v26 departureDate];
      formattedString2 = [(MKTransitDeparturesSectionController *)self _nextLastDepartureDateForSequence:sequenceCopy afterDate:departureDate5];

      if (!formattedString2 || (-[MKTransitSectionController departureCutoffDate](self, "departureCutoffDate"), v36 = objc_claimAutoreleasedReturnValue(), [formattedString2 timeIntervalSinceDate:v36], v38 = v37, v36, v38 >= 3600.0))
      {
        v29 = 0;
        v59 = 0;
        v33 = 0;
        goto LABEL_36;
      }

      stringCopy2 = string;
      serviceGapFormatter = formattedString2;
      serviceGapFormatter3 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
      v32 = [serviceGapFormatter3 lastDepartureAtStringFromDate:serviceGapFormatter];

      v29 = serviceGapFormatter;
    }

LABEL_32:

    if (!v32)
    {
      v59 = 0;
      v33 = 0;
      string = stringCopy2;
      goto LABEL_38;
    }

    v56 = v29;
    v57 = v24;
    v42 = objc_alloc(MEMORY[0x1E696AD40]);
    v59 = v32;
    formattedString = [v32 formattedString];
    v33 = [v42 initWithString:formattedString];

    serviceGapFormatter4 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
    lastDepartureString2 = [serviceGapFormatter4 lastDepartureString];
    formattedString2 = [lastDepartureString2 formattedString];

    string = [v33 string];
    lowercaseString = [string lowercaseString];
    lowercaseString2 = [formattedString2 lowercaseString];
    v49 = [lowercaseString rangeOfString:lowercaseString2];
    v55 = v50;

    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = *MEMORY[0x1E69DB648];
      v52 = +[MKTransitDeparturesCell strongSecondaryFont];
      [v33 addAttribute:v51 value:v52 range:{v49, v55}];
    }

    v24 = v57;
    string = stringCopy2;
    v29 = v56;
LABEL_36:

LABEL_38:
    goto LABEL_39;
  }

  v33 = 0;
  v29 = 0;
LABEL_39:
  if (dateCopy)
  {
    v53 = v29;
    *dateCopy = v29;
  }

  if (string)
  {
    if (v33)
    {
      v54 = [v33 copy];
      *string = v54;
    }

    else
    {
      *string = 0;
    }
  }

LABEL_46:
}

- (id)_nextLastDepartureDateForSequence:(id)sequence afterDate:(id)date
{
  sequenceCopy = sequence;
  v7 = [sequenceCopy firstDepartureAfterDate:date];
  departureDate = [v7 departureDate];

  v9 = [sequenceCopy firstDepartureAfterDate:departureDate];
  departureDate2 = [v9 departureDate];

  if (departureDate)
  {
    while (![(MKTransitDeparturesSectionController *)self _isDateLastDeparture:departureDate withNextDepartureDate:departureDate2 forSequence:sequenceCopy])
    {
      v11 = departureDate2;

      v12 = [sequenceCopy firstDepartureAfterDate:v11];
      departureDate2 = [v12 departureDate];

      departureDate = v11;
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    v13 = departureDate;
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isDateLastDeparture:(id)departure withNextDepartureDate:(id)date forSequence:(id)sequence
{
  sequenceCopy = sequence;
  if (date)
  {
    departureCopy = departure;
    v10 = [sequenceCopy isDepartureDateInactive:date withReferenceDate:departureCopy];
  }

  else
  {
    mapItem = self->super._mapItem;
    departureCopy2 = departure;
    _transitInfo = [(MKMapItem *)mapItem _transitInfo];
    departureCopy = [_transitInfo lastFullScheduleValidDate];

    [departureCopy timeIntervalSinceDate:departureCopy2];
    v15 = v14;

    if (v15 >= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v16 = [sequenceCopy numberOfDeparturesAfterDate:departureCopy];
      _transitInfo2 = [(MKMapItem *)self->super._mapItem _transitInfo];
      v10 = v16 < [_transitInfo2 numAdditionalDeparturesForSequence:sequenceCopy];
    }
  }

  return v10;
}

- (void)setDepartureCutoffDate:(id)date
{
  v5.receiver = self;
  v5.super_class = MKTransitDeparturesSectionController;
  [(MKTransitSectionController *)&v5 setDepartureCutoffDate:date];
  serviceGapFormatter = self->_serviceGapFormatter;
  self->_serviceGapFormatter = 0;
}

- (MKTransitDepartureServiceGapFormatter)serviceGapFormatter
{
  serviceGapFormatter = self->_serviceGapFormatter;
  if (!serviceGapFormatter)
  {
    v4 = [MKTransitDepartureServiceGapFormatter alloc];
    timeZone = [(MKMapItem *)self->super._mapItem timeZone];
    departureCutoffDate = [(MKTransitSectionController *)self departureCutoffDate];
    v7 = [(MKTransitDepartureServiceGapFormatter *)v4 initWithTimeZone:timeZone departureCutoffDate:departureCutoffDate];
    v8 = self->_serviceGapFormatter;
    self->_serviceGapFormatter = v7;

    serviceGapFormatter = self->_serviceGapFormatter;
  }

  return serviceGapFormatter;
}

- (void)_buildRows
{
  v90 = *MEMORY[0x1E69E9840];
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    v86.receiver = self;
    v86.super_class = MKTransitDeparturesSectionController;
    [(MKTransitSectionController *)&v86 _buildRows];
    sequences = [(MKTransitDeparturesSectionController *)self sequences];
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sequencesToInclude = self->_sequencesToInclude;
    self->_sequencesToInclude = strongToStrongObjectsMapTable;

    _pagingFilter = [(MKTransitDeparturesSectionController *)self _pagingFilter];
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy__13094;
    v84 = __Block_byref_object_dispose__13095;
    v85 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(sequences, "count")}];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x3032000000;
    v74[3] = __Block_byref_object_copy__13094;
    v74[4] = __Block_byref_object_dispose__13095;
    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__13094;
    v72 = __Block_byref_object_dispose__13095;
    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__13094;
    v66 = __Block_byref_object_dispose__13095;
    strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __50__MKTransitDeparturesSectionController__buildRows__block_invoke;
    v61[3] = &unk_1E76CA190;
    v61[4] = self;
    v36 = MEMORY[0x1A58E9F30](v61);
    limitNumLines = [_pagingFilter limitNumLines];
    numLinesFallbackValue = [_pagingFilter numLinesFallbackValue];
    if (limitNumLines)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v7 = sequences;
      v8 = [v7 countByEnumeratingWithState:&v57 objects:v89 count:16];
      if (v8)
      {
        v9 = *v58;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v58 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v57 + 1) + 8 * i);
            v12 = [v81[5] count];
            if (v12 == [_pagingFilter numLinesFallbackThreshold])
            {
              LOBYTE(limitNumLines) = 1;
              goto LABEL_13;
            }

            v13 = v81[5];
            line = [v11 line];
            [v13 addObject:line];
          }

          v8 = [v7 countByEnumeratingWithState:&v57 objects:v89 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(limitNumLines) = 0;
LABEL_13:

      [v81[5] removeAllObjects];
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __50__MKTransitDeparturesSectionController__buildRows__block_invoke_2;
    v48[3] = &unk_1E76C8370;
    v37 = v36;
    v48[4] = self;
    v49 = v37;
    v50 = v74;
    v51 = &v68;
    v56 = limitNumLines;
    v52 = &v62;
    v53 = &v80;
    v54 = &v76;
    v55 = numLinesFallbackValue;
    [sequences enumerateObjectsUsingBlock:v48];
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    sequences2 = [(MKTransitDeparturesSectionController *)self sequences];
    v17 = [sequences2 countByEnumeratingWithState:&v44 objects:v88 count:16];
    if (v17)
    {
      v18 = *v45;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(sequences2);
          }

          v20 = *(*(&v44 + 1) + 8 * j);
          v21 = [(NSMapTable *)self->_sequencesToInclude objectForKey:v20];

          if (v21)
          {
            line2 = [v20 line];
            [v15 addObject:line2];
          }
        }

        v17 = [sequences2 countByEnumeratingWithState:&v44 objects:v88 count:16];
      }

      while (v17);
    }

    v23 = [v15 copy];
    linesToShow = self->super._linesToShow;
    self->super._linesToShow = v23;

    v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v69[5], "count")}];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    keyEnumerator = [v69[5] keyEnumerator];
    v27 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v87 count:16];
    if (v27)
    {
      v28 = *v41;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v30 = *(*(&v40 + 1) + 8 * k);
          v31 = [v69[5] objectForKey:v30];
          v32 = [v63[5] objectForKey:v30];
          v33 = [v31 copy];
          [v25 setObject:v33 forKeyedSubscript:v32];
        }

        v27 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v87 count:16];
      }

      while (v27);
    }

    v34 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v25];
    serviceGapStrings = self->_serviceGapStrings;
    self->_serviceGapStrings = v34;

    self->super._numberOfRows = v77[3];
    _Block_object_dispose(&v62, 8);

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(v74, 8);

    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v80, 8);
  }
}

id __50__MKTransitDeparturesSectionController__buildRows__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  if (v2 && ![*(a1 + 32) departuresAreVehicleSpecific])
  {
    v3 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  }

  else
  {
    v3 = [*(a1 + 32) departureCutoffDate];
  }

  v4 = v3;

  return v4;
}

void __50__MKTransitDeparturesSectionController__buildRows__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = (*(*(a1 + 40) + 16))();
  v7 = [v5 departuresValidForDate:v6];

  v8 = [v5 line];
  v9 = *(a1 + 32);
  v24 = 0;
  v25 = 0;
  [v9 _serviceGapDate:&v25 string:&v24 forSequence:v5 withDepartureIndex:0];
  v10 = v25;
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:v8];
      if (!v13 || (v14 = v13, [*(*(*(a1 + 48) + 8) + 40) objectForKey:v8], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "laterDate:", v10), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16 == v10))
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:v10 forKey:v8];
        v17 = *(*(*(a1 + 56) + 8) + 40);
        v18 = [v12 copy];
        [v17 setObject:v18 forKey:v8];

        v19 = *(*(*(a1 + 64) + 8) + 40);
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v19 setObject:v20 forKey:v8];
      }
    }
  }

  if (*(a1 + 96) == 1 && [*(*(*(a1 + 72) + 8) + 40) count] == *(a1 + 88))
  {
    ++*(*(a1 + 32) + 48);
  }

  else
  {
    [*(*(*(a1 + 72) + 8) + 40) addObject:v8];
    ++*(*(*(a1 + 80) + 8) + 24);
    v21 = objc_alloc_init(_MKSortedDepartureCollection);
    v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v5, 0}];
    [(_MKSortedDepartureCollection *)v21 setGroupedSequences:v22];

    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v7];
    [(_MKSortedDepartureCollection *)v21 setSortedDepartures:v23];

    [*(*(a1 + 32) + 120) setObject:v21 forKey:v5];
  }
}

- (void)_setNeedsBuildRows
{
  v5.receiver = self;
  v5.super_class = MKTransitDeparturesSectionController;
  [(MKTransitSectionController *)&v5 _setNeedsBuildRows];
  sequences = self->_sequences;
  self->_sequences = 0;

  serviceGapStrings = self->_serviceGapStrings;
  self->_serviceGapStrings = 0;

  self->_needsFindRowForServiceGap = 1;
}

- (id)_pagingFilter
{
  pagingFilter = self->super.__pagingFilter;
  if (!pagingFilter)
  {
    v4 = +[MKTransitSectionPagingFilter defaultFilterForDepartures];
    v5 = self->super.__pagingFilter;
    self->super.__pagingFilter = v4;

    pagingFilter = self->super.__pagingFilter;
  }

  return pagingFilter;
}

- (BOOL)showOperatingHours
{
  sequences = [(MKTransitDeparturesSectionController *)self sequences];
  firstObject = [sequences firstObject];

  LOBYTE(sequences) = [firstObject departureTimeDisplayStyle] == 3;
  return sequences;
}

- (id)sequenceForRow:(int64_t)row outIsNewLine:(BOOL *)line outNextLineIsSame:(BOOL *)same
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitDeparturesSectionController *)self _buildRows];
  }

  sequences = [(MKTransitDeparturesSectionController *)self sequences];
  v21 = 0;
  line = 0;
  v8 = 0;
  rowCopy = 0;
  v23 = 1;
  do
  {
    v10 = line;
    while (1)
    {
      if (v8 >= [sequences count])
      {
        v14 = 0;
        goto LABEL_24;
      }

      v11 = [sequences objectAtIndexedSubscript:v8];
      v12 = [(NSMapTable *)self->_sequencesToInclude objectForKey:v11];

      if (v12)
      {
        break;
      }

      ++v8;
    }

    line = [v11 line];
    v23 = 1;
    if (v10)
    {
      muid = [v10 muid];
      if (muid == [line muid])
      {
        v23 = 0;
      }
    }

    ++v8;
    if (rowCopy == row)
    {
      v14 = v11;
      if (v8 == [sequences count])
      {
        v21 = 0;
      }

      else
      {
        v15 = [(MKTransitDeparturesSectionController *)self sequenceForRow:row + 1 outIsNewLine:0 outNextLineIsSame:0];
        v16 = v15;
        if (v15)
        {
          line2 = [v15 line];
          muid2 = [line2 muid];
          v21 = muid2 == [line muid];
        }

        else
        {
          v21 = 0;
        }
      }

      rowCopy = row;
    }

    else
    {
      v14 = 0;
      ++rowCopy;
    }
  }

  while (!v14);
LABEL_24:
  if (line)
  {
    *line = v23;
  }

  if (same)
  {
    *same = v21;
  }

  return v14;
}

- (id)sequences
{
  sequences = self->_sequences;
  if (!sequences)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__MKTransitDeparturesSectionController_sequences__block_invoke;
    v11[3] = &unk_1E76CA190;
    v11[4] = self;
    v4 = MEMORY[0x1A58E9F30](v11, a2);
    _transitInfo = [(MKMapItem *)self->super._mapItem _transitInfo];
    system = [(MKTransitSectionController *)self system];
    incidentEntitiesToExclude = [(MKTransitSectionController *)self incidentEntitiesToExclude];
    v8 = [_transitInfo departureSequencesForSystem:system excludingIncidentEntities:incidentEntitiesToExclude container:self->_departureSequenceContainer validForDateFromBlock:v4];
    v9 = self->_sequences;
    self->_sequences = v8;

    sequences = self->_sequences;
  }

  return sequences;
}

id __49__MKTransitDeparturesSectionController_sequences__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  if (v2 && ![*(a1 + 32) departuresAreVehicleSpecific])
  {
    v3 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  }

  else
  {
    v3 = [*(a1 + 32) departureCutoffDate];
  }

  v4 = v3;

  return v4;
}

- (BOOL)departuresAreVehicleSpecific
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_needsFindDeparturesAreVehicleSpecific)
  {
    self->_needsFindDeparturesAreVehicleSpecific = 0;
    _transitInfo = [(MKMapItem *)self->super._mapItem _transitInfo];
    system = [(MKTransitSectionController *)self system];
    v5 = [_transitInfo allSequencesForSystem:system container:self->_departureSequenceContainer];

    self->_departuresAreVehicleSpecific = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          line = [*(*(&v14 + 1) + 8 * i) line];
          departuresAreVehicleSpecific = [line departuresAreVehicleSpecific];

          if ((departuresAreVehicleSpecific & 1) == 0)
          {
            self->_departuresAreVehicleSpecific = 0;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return self->_departuresAreVehicleSpecific;
}

- (MKTransitDeparturesSectionController)initWithMapItem:(id)item system:(id)system departureSequenceContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = MKTransitDeparturesSectionController;
  v10 = [(MKTransitSectionController *)&v13 initWithMapItem:item system:system];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_departureSequenceContainer, container);
    [(MKTransitDeparturesSectionController *)v11 _sharedSetup];
  }

  return v11;
}

- (MKTransitDeparturesSectionController)initWithMapItem:(id)item system:(id)system direction:(id)direction
{
  directionCopy = direction;
  v13.receiver = self;
  v13.super_class = MKTransitDeparturesSectionController;
  v9 = [(MKTransitSectionController *)&v13 initWithMapItem:item system:system];
  if (v9)
  {
    v10 = [directionCopy copy];
    direction = v9->_direction;
    v9->_direction = v10;

    [(MKTransitDeparturesSectionController *)v9 _sharedSetup];
  }

  return v9;
}

- (MKTransitDeparturesSectionController)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end