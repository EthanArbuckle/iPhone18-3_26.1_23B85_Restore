@interface MKTransitDeparturesSectionController
- (BOOL)_isDateLastDeparture:(id)a3 withNextDepartureDate:(id)a4 forSequence:(id)a5;
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)showOperatingHours;
- (MKTransitDepartureServiceGapFormatter)serviceGapFormatter;
- (MKTransitDeparturesSectionController)init;
- (MKTransitDeparturesSectionController)initWithMapItem:(id)a3 system:(id)a4 departureSequenceContainer:(id)a5;
- (MKTransitDeparturesSectionController)initWithMapItem:(id)a3 system:(id)a4 direction:(id)a5;
- (id)_nextLastDepartureDateForSequence:(id)a3 afterDate:(id)a4;
- (id)_pagingFilter;
- (id)sequenceForRow:(int64_t)a3 outIsNewLine:(BOOL *)a4 outNextLineIsSame:(BOOL *)a5;
- (id)sequences;
- (id)serviceGapDescriptionForRow:(int64_t)a3;
- (void)_buildRows;
- (void)_serviceGapDate:(id *)a3 string:(id *)a4 forSequence:(id)a5 withDepartureIndex:(unint64_t)a6;
- (void)_setNeedsBuildRows;
- (void)setDepartureCutoffDate:(id)a3;
@end

@implementation MKTransitDeparturesSectionController

- (id)serviceGapDescriptionForRow:(int64_t)a3
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitDeparturesSectionController *)self _buildRows];
  }

  serviceGapStrings = self->_serviceGapStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSDictionary *)serviceGapStrings objectForKey:v6];

  return v7;
}

- (void)_serviceGapDate:(id *)a3 string:(id *)a4 forSequence:(id)a5 withDepartureIndex:(unint64_t)a6
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if ([v9 departureTimeDisplayStyle] == 5)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_46;
  }

  v61 = a3;
  v10 = [(MKTransitSectionController *)self expiredHighFrequencyCutoffDate];
  if (v10 && ![(MKTransitDeparturesSectionController *)self departuresAreVehicleSpecific])
  {
    v11 = [(MKTransitSectionController *)self expiredHighFrequencyCutoffDate];
  }

  else
  {
    v11 = [(MKTransitSectionController *)self departureCutoffDate];
  }

  v12 = v11;
  v13 = [v9 departuresValidForDate:v11];

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
        v21 = [v20 departureDate];

        if (v21)
        {
          v22 = [v20 departureDate];
          [v14 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v17);
  }

  v23 = [(MKTransitSectionController *)self departureCutoffDate];
  v24 = [MKTransitDeparturesCell displayableCountdowDepartureDatesFromDates:v14 withReferenceDate:v23];

  v25 = [v24 lastObject];
  if (v25)
  {
    v26 = [v9 firstDepartureAfterDate:v25];
    v27 = [v26 departureDate];
    v28 = [(MKTransitDeparturesSectionController *)self _isDateLastDeparture:v25 withNextDepartureDate:v27 forSequence:v9];

    v60 = v26;
    if (v28)
    {
      v29 = v25;
      v58 = a4;
      if ([v24 count] != 1)
      {
        v40 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
        v41 = [v40 lastDepartureAtStringFromDate:v29];
LABEL_31:
        v32 = v41;
        goto LABEL_32;
      }

      v30 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
      v40 = v30;
      if (!v26)
      {
        v41 = [v30 lastDepartureString];
        goto LABEL_31;
      }

      v31 = [v26 departureDate];
      v32 = [v40 lastDepartureUntilStringFromDate:v31];
    }

    else
    {
      v34 = [v26 departureDate];
      v35 = [(MKTransitDeparturesSectionController *)self _nextLastDepartureDateForSequence:v9 afterDate:v34];

      if (!v35 || (-[MKTransitSectionController departureCutoffDate](self, "departureCutoffDate"), v36 = objc_claimAutoreleasedReturnValue(), [v35 timeIntervalSinceDate:v36], v38 = v37, v36, v38 >= 3600.0))
      {
        v29 = 0;
        v59 = 0;
        v33 = 0;
        goto LABEL_36;
      }

      v58 = a4;
      v40 = v35;
      v39 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
      v32 = [v39 lastDepartureAtStringFromDate:v40];

      v29 = v40;
    }

LABEL_32:

    if (!v32)
    {
      v59 = 0;
      v33 = 0;
      a4 = v58;
      goto LABEL_38;
    }

    v56 = v29;
    v57 = v24;
    v42 = objc_alloc(MEMORY[0x1E696AD40]);
    v59 = v32;
    v43 = [v32 formattedString];
    v33 = [v42 initWithString:v43];

    v44 = [(MKTransitDeparturesSectionController *)self serviceGapFormatter];
    v45 = [v44 lastDepartureString];
    v35 = [v45 formattedString];

    v46 = [v33 string];
    v47 = [v46 lowercaseString];
    v48 = [v35 lowercaseString];
    v49 = [v47 rangeOfString:v48];
    v55 = v50;

    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = *MEMORY[0x1E69DB648];
      v52 = +[MKTransitDeparturesCell strongSecondaryFont];
      [v33 addAttribute:v51 value:v52 range:{v49, v55}];
    }

    v24 = v57;
    a4 = v58;
    v29 = v56;
LABEL_36:

LABEL_38:
    goto LABEL_39;
  }

  v33 = 0;
  v29 = 0;
LABEL_39:
  if (v61)
  {
    v53 = v29;
    *v61 = v29;
  }

  if (a4)
  {
    if (v33)
    {
      v54 = [v33 copy];
      *a4 = v54;
    }

    else
    {
      *a4 = 0;
    }
  }

LABEL_46:
}

- (id)_nextLastDepartureDateForSequence:(id)a3 afterDate:(id)a4
{
  v6 = a3;
  v7 = [v6 firstDepartureAfterDate:a4];
  v8 = [v7 departureDate];

  v9 = [v6 firstDepartureAfterDate:v8];
  v10 = [v9 departureDate];

  if (v8)
  {
    while (![(MKTransitDeparturesSectionController *)self _isDateLastDeparture:v8 withNextDepartureDate:v10 forSequence:v6])
    {
      v11 = v10;

      v12 = [v6 firstDepartureAfterDate:v11];
      v10 = [v12 departureDate];

      v8 = v11;
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    v13 = v8;
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isDateLastDeparture:(id)a3 withNextDepartureDate:(id)a4 forSequence:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = a3;
    v10 = [v8 isDepartureDateInactive:a4 withReferenceDate:v9];
  }

  else
  {
    mapItem = self->super._mapItem;
    v12 = a3;
    v13 = [(MKMapItem *)mapItem _transitInfo];
    v9 = [v13 lastFullScheduleValidDate];

    [v9 timeIntervalSinceDate:v12];
    v15 = v14;

    if (v15 >= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v16 = [v8 numberOfDeparturesAfterDate:v9];
      v17 = [(MKMapItem *)self->super._mapItem _transitInfo];
      v10 = v16 < [v17 numAdditionalDeparturesForSequence:v8];
    }
  }

  return v10;
}

- (void)setDepartureCutoffDate:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKTransitDeparturesSectionController;
  [(MKTransitSectionController *)&v5 setDepartureCutoffDate:a3];
  serviceGapFormatter = self->_serviceGapFormatter;
  self->_serviceGapFormatter = 0;
}

- (MKTransitDepartureServiceGapFormatter)serviceGapFormatter
{
  serviceGapFormatter = self->_serviceGapFormatter;
  if (!serviceGapFormatter)
  {
    v4 = [MKTransitDepartureServiceGapFormatter alloc];
    v5 = [(MKMapItem *)self->super._mapItem timeZone];
    v6 = [(MKTransitSectionController *)self departureCutoffDate];
    v7 = [(MKTransitDepartureServiceGapFormatter *)v4 initWithTimeZone:v5 departureCutoffDate:v6];
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
    v38 = [(MKTransitDeparturesSectionController *)self sequences];
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sequencesToInclude = self->_sequencesToInclude;
    self->_sequencesToInclude = v3;

    v39 = [(MKTransitDeparturesSectionController *)self _pagingFilter];
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy__13094;
    v84 = __Block_byref_object_dispose__13095;
    v85 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v38, "count")}];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x3032000000;
    v74[3] = __Block_byref_object_copy__13094;
    v74[4] = __Block_byref_object_dispose__13095;
    v75 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__13094;
    v72 = __Block_byref_object_dispose__13095;
    v73 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__13094;
    v66 = __Block_byref_object_dispose__13095;
    v67 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __50__MKTransitDeparturesSectionController__buildRows__block_invoke;
    v61[3] = &unk_1E76CA190;
    v61[4] = self;
    v36 = MEMORY[0x1A58E9F30](v61);
    v5 = [v39 limitNumLines];
    v6 = [v39 numLinesFallbackValue];
    if (v5)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v7 = v38;
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
            if (v12 == [v39 numLinesFallbackThreshold])
            {
              LOBYTE(v5) = 1;
              goto LABEL_13;
            }

            v13 = v81[5];
            v14 = [v11 line];
            [v13 addObject:v14];
          }

          v8 = [v7 countByEnumeratingWithState:&v57 objects:v89 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v5) = 0;
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
    v56 = v5;
    v52 = &v62;
    v53 = &v80;
    v54 = &v76;
    v55 = v6;
    [v38 enumerateObjectsUsingBlock:v48];
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v16 = [(MKTransitDeparturesSectionController *)self sequences];
    v17 = [v16 countByEnumeratingWithState:&v44 objects:v88 count:16];
    if (v17)
    {
      v18 = *v45;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v44 + 1) + 8 * j);
          v21 = [(NSMapTable *)self->_sequencesToInclude objectForKey:v20];

          if (v21)
          {
            v22 = [v20 line];
            [v15 addObject:v22];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v44 objects:v88 count:16];
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
    v26 = [v69[5] keyEnumerator];
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v87 count:16];
    if (v27)
    {
      v28 = *v41;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v40 + 1) + 8 * k);
          v31 = [v69[5] objectForKey:v30];
          v32 = [v63[5] objectForKey:v30];
          v33 = [v31 copy];
          [v25 setObject:v33 forKeyedSubscript:v32];
        }

        v27 = [v26 countByEnumeratingWithState:&v40 objects:v87 count:16];
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
  v2 = [(MKTransitDeparturesSectionController *)self sequences];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 departureTimeDisplayStyle] == 3;
  return v2;
}

- (id)sequenceForRow:(int64_t)a3 outIsNewLine:(BOOL *)a4 outNextLineIsSame:(BOOL *)a5
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitDeparturesSectionController *)self _buildRows];
  }

  v6 = [(MKTransitDeparturesSectionController *)self sequences];
  v21 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v23 = 1;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v8 >= [v6 count])
      {
        v14 = 0;
        goto LABEL_24;
      }

      v11 = [v6 objectAtIndexedSubscript:v8];
      v12 = [(NSMapTable *)self->_sequencesToInclude objectForKey:v11];

      if (v12)
      {
        break;
      }

      ++v8;
    }

    v7 = [v11 line];
    v23 = 1;
    if (v10)
    {
      v13 = [v10 muid];
      if (v13 == [v7 muid])
      {
        v23 = 0;
      }
    }

    ++v8;
    if (v9 == a3)
    {
      v14 = v11;
      if (v8 == [v6 count])
      {
        v21 = 0;
      }

      else
      {
        v15 = [(MKTransitDeparturesSectionController *)self sequenceForRow:a3 + 1 outIsNewLine:0 outNextLineIsSame:0];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 line];
          v22 = [v17 muid];
          v21 = v22 == [v7 muid];
        }

        else
        {
          v21 = 0;
        }
      }

      v9 = a3;
    }

    else
    {
      v14 = 0;
      ++v9;
    }
  }

  while (!v14);
LABEL_24:
  if (a4)
  {
    *a4 = v23;
  }

  if (a5)
  {
    *a5 = v21;
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
    v5 = [(MKMapItem *)self->super._mapItem _transitInfo];
    v6 = [(MKTransitSectionController *)self system];
    v7 = [(MKTransitSectionController *)self incidentEntitiesToExclude];
    v8 = [v5 departureSequencesForSystem:v6 excludingIncidentEntities:v7 container:self->_departureSequenceContainer validForDateFromBlock:v4];
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
    v3 = [(MKMapItem *)self->super._mapItem _transitInfo];
    v4 = [(MKTransitSectionController *)self system];
    v5 = [v3 allSequencesForSystem:v4 container:self->_departureSequenceContainer];

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

          v11 = [*(*(&v14 + 1) + 8 * i) line];
          v12 = [v11 departuresAreVehicleSpecific];

          if ((v12 & 1) == 0)
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

- (MKTransitDeparturesSectionController)initWithMapItem:(id)a3 system:(id)a4 departureSequenceContainer:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MKTransitDeparturesSectionController;
  v10 = [(MKTransitSectionController *)&v13 initWithMapItem:a3 system:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_departureSequenceContainer, a5);
    [(MKTransitDeparturesSectionController *)v11 _sharedSetup];
  }

  return v11;
}

- (MKTransitDeparturesSectionController)initWithMapItem:(id)a3 system:(id)a4 direction:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = MKTransitDeparturesSectionController;
  v9 = [(MKTransitSectionController *)&v13 initWithMapItem:a3 system:a4];
  if (v9)
  {
    v10 = [v8 copy];
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