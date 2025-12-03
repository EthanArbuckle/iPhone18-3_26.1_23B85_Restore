@interface MKTransitItemIncidentsController
- (MKTransitItemIncidentsController)initWithLineItem:(id)item;
- (MKTransitItemIncidentsController)initWithMapItem:(id)item;
- (id)_incidentsAffectingMuid:(unint64_t)muid;
- (id)blockedIncidentEntities;
- (id)incidentsForDepartureSequence:(id)sequence;
- (id)incidentsForLine:(id)line;
- (id)incidentsForLinesInSystem:(id)system;
- (id)incidentsForMapItem:(id)item;
- (id)incidentsForSystem:(id)system;
- (void)resetCache;
- (void)setReferenceDate:(id)date;
@end

@implementation MKTransitItemIncidentsController

- (id)blockedIncidentEntities
{
  v28 = *MEMORY[0x1E69E9840];
  blockedIncidentEntities = self->_blockedIncidentEntities;
  if (!blockedIncidentEntities)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_validIncidents;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          if ([v10 isBlockingIncident])
          {
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            affectedEntities = [v10 affectedEntities];
            v12 = [affectedEntities countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v19;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v19 != v14)
                  {
                    objc_enumerationMutation(affectedEntities);
                  }

                  [(NSSet *)v4 addObject:*(*(&v18 + 1) + 8 * j)];
                }

                v13 = [affectedEntities countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v13);
            }
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    v16 = self->_blockedIncidentEntities;
    self->_blockedIncidentEntities = v4;

    blockedIncidentEntities = self->_blockedIncidentEntities;
  }

  return blockedIncidentEntities;
}

- (id)incidentsForDepartureSequence:(id)sequence
{
  v31 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  v5 = MEMORY[0x1E696AD60];
  v6 = MEMORY[0x1E696AD98];
  line = [sequenceCopy line];
  v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(line, "muid")}];
  v9 = [v5 stringWithFormat:@"%@", v8];

  nextStopIDs = [sequenceCopy nextStopIDs];
  allObjects = [nextStopIDs allObjects];
  v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_9];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v9 appendFormat:@"_%@", *(*(&v26 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v18 = [(NSMutableDictionary *)self->_incidentsForDepartureSequence objectForKeyedSubscript:v9];

  if (!v18)
  {
    validIncidents = self->_validIncidents;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__MKTransitItemIncidentsController_incidentsForDepartureSequence___block_invoke_2;
    v24[3] = &unk_1E76C6E38;
    v25 = sequenceCopy;
    v20 = [(NSArray *)validIncidents indexesOfObjectsPassingTest:v24];
    v21 = [(NSArray *)self->_validIncidents objectsAtIndexes:v20];
    [(NSMutableDictionary *)self->_incidentsForDepartureSequence setObject:v21 forKeyedSubscript:v9];
  }

  v22 = [(NSMutableDictionary *)self->_incidentsForDepartureSequence objectForKeyedSubscript:v9];

  return v22;
}

uint64_t __66__MKTransitItemIncidentsController_incidentsForDepartureSequence___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [a2 affectedEntities];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (GEOTransitIncidentEntityAffectsSequence())
        {
          v7 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)incidentsForMapItem:(id)item
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(itemCopy, "_muid")}];
  v6 = [(NSMutableDictionary *)self->_incidentsForMapItem objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    _transitInfo = [itemCopy _transitInfo];
    systems = [_transitInfo systems];

    v10 = [systems countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(systems);
          }

          v14 = [(MKTransitItemIncidentsController *)self incidentsForSystem:*(*(&v34 + 1) + 8 * i)];
          [v7 addObjectsFromArray:v14];
        }

        v11 = [systems countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    _transitInfo2 = [itemCopy _transitInfo];
    lines = [_transitInfo2 lines];

    v17 = [lines countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(lines);
          }

          v21 = [(MKTransitItemIncidentsController *)self incidentsForLine:*(*(&v30 + 1) + 8 * j)];
          [v7 addObjectsFromArray:v21];
        }

        v18 = [lines countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }

    validIncidents = self->_validIncidents;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__MKTransitItemIncidentsController_incidentsForMapItem___block_invoke;
    v28[3] = &unk_1E76C6E38;
    v29 = v7;
    v23 = v7;
    v24 = [(NSArray *)validIncidents indexesOfObjectsPassingTest:v28];
    v25 = [(NSArray *)self->_validIncidents objectsAtIndexes:v24];
    [(NSMutableDictionary *)self->_incidentsForMapItem setObject:v25 forKeyedSubscript:v5];
  }

  v26 = [(NSMutableDictionary *)self->_incidentsForMapItem objectForKeyedSubscript:v5];

  return v26;
}

- (id)incidentsForLine:(id)line
{
  lineCopy = line;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(lineCopy, "muid")}];
  v6 = [(NSMutableDictionary *)self->_incidentsForLine objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = -[MKTransitItemIncidentsController _incidentsAffectingMuid:](self, "_incidentsAffectingMuid:", [lineCopy muid]);
    [(NSMutableDictionary *)self->_incidentsForLine setObject:v7 forKeyedSubscript:v5];
  }

  v8 = [(NSMutableDictionary *)self->_incidentsForLine objectForKeyedSubscript:v5];

  return v8;
}

- (id)incidentsForSystem:(id)system
{
  v40 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(systemCopy, "muid")}];
  v6 = [(NSMutableDictionary *)self->_incidentsForSystem objectForKeyedSubscript:v5];

  if (!v6)
  {
    v29 = -[MKTransitItemIncidentsController _incidentsAffectingMuid:](self, "_incidentsAffectingMuid:", [systemCopy muid]);
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    _transitInfo = [(MKMapItem *)self->_mapItem _transitInfo];
    lines = [_transitInfo lines];
    v10 = lines;
    v30 = v5;
    selfCopy = self;
    if (lines)
    {
      v11 = lines;
    }

    else
    {
      lineItem = self->_lineItem;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&lineItem count:1];
    }

    v12 = v11;

    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          system = [v17 system];
          muid = [system muid];
          muid2 = [systemCopy muid];

          if (muid == muid2)
          {
            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v17, "muid")}];
            [v7 addObject:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    self = selfCopy;
    validIncidents = selfCopy->_validIncidents;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __55__MKTransitItemIncidentsController_incidentsForSystem___block_invoke;
    v32[3] = &unk_1E76C6E38;
    v33 = v7;
    v23 = v7;
    v24 = [(NSArray *)validIncidents indexesOfObjectsPassingTest:v32];
    v25 = [(NSArray *)selfCopy->_validIncidents objectsAtIndexes:v24];
    v26 = [v25 arrayByAddingObjectsFromArray:v29];
    v5 = v30;
    [(NSMutableDictionary *)selfCopy->_incidentsForSystem setObject:v26 forKeyedSubscript:v30];
  }

  v27 = [(NSMutableDictionary *)self->_incidentsForSystem objectForKeyedSubscript:v5, v29];

  return v27;
}

uint64_t __55__MKTransitItemIncidentsController_incidentsForSystem___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isBlockingIncident])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 affectedEntities];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v13 + 1) + 8 * v8), "muid")}];
          LOBYTE(v9) = [v9 containsObject:v10];

          if (v9)
          {
            v11 = 1;
            goto LABEL_13;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)incidentsForLinesInSystem:(id)system
{
  v38 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(systemCopy, "muid")}];
  v6 = [(NSMutableDictionary *)self->_incidentsForLinesInSystem objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    _transitInfo = [(MKMapItem *)self->_mapItem _transitInfo];
    lines = [_transitInfo lines];
    v10 = lines;
    v28 = v5;
    selfCopy = self;
    if (lines)
    {
      v11 = lines;
    }

    else
    {
      lineItem = self->_lineItem;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&lineItem count:1];
    }

    v12 = v11;

    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          system = [v17 system];
          muid = [system muid];
          muid2 = [systemCopy muid];

          if (muid == muid2)
          {
            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v17, "muid")}];
            [v7 addObject:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    self = selfCopy;
    validIncidents = selfCopy->_validIncidents;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __62__MKTransitItemIncidentsController_incidentsForLinesInSystem___block_invoke;
    v30[3] = &unk_1E76C6E38;
    v31 = v7;
    v23 = v7;
    v24 = [(NSArray *)validIncidents indexesOfObjectsPassingTest:v30];
    v25 = [(NSArray *)selfCopy->_validIncidents objectsAtIndexes:v24];
    v5 = v28;
    [(NSMutableDictionary *)selfCopy->_incidentsForLinesInSystem setObject:v25 forKeyedSubscript:v28];
  }

  v26 = [(NSMutableDictionary *)self->_incidentsForLinesInSystem objectForKeyedSubscript:v5];

  return v26;
}

uint64_t __62__MKTransitItemIncidentsController_incidentsForLinesInSystem___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 affectedEntities];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v12 + 1) + 8 * v7), "muid")}];
        LOBYTE(v8) = [v8 containsObject:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_incidentsAffectingMuid:(unint64_t)muid
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:muid];
  validIncidents = self->_validIncidents;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MKTransitItemIncidentsController__incidentsAffectingMuid___block_invoke;
  v10[3] = &unk_1E76C6E38;
  v11 = v4;
  v6 = v4;
  v7 = [(NSArray *)validIncidents indexesOfObjectsPassingTest:v10];
  v8 = [(NSArray *)self->_validIncidents objectsAtIndexes:v7];

  return v8;
}

uint64_t __60__MKTransitItemIncidentsController__incidentsAffectingMuid___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 affectedEntities];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v13 + 1) + 8 * v9), "muid")}];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 containsObject:*(a1 + 32)];
  return v11;
}

- (void)resetCache
{
  mapItem = self->_mapItem;
  if (mapItem)
  {
    _transitInfo = [(MKMapItem *)mapItem _transitInfo];
    incidents = [_transitInfo incidents];
  }

  else
  {
    incidents = [(GEOTransitLineItem *)self->_lineItem incidents];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MKTransitItemIncidentsController_resetCache__block_invoke;
  v10[3] = &unk_1E76C6E38;
  v10[4] = self;
  v6 = [incidents indexesOfObjectsPassingTest:v10];
  v7 = [incidents objectsAtIndexes:v6];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_4258];
  validIncidents = self->_validIncidents;
  self->_validIncidents = v8;

  [(NSMutableDictionary *)self->_incidentsForDepartureSequence removeAllObjects];
  [(NSMutableDictionary *)self->_incidentsForSystem removeAllObjects];
  [(NSMutableDictionary *)self->_incidentsForLine removeAllObjects];
  [(NSMutableDictionary *)self->_incidentsForMapItem removeAllObjects];
}

uint64_t __46__MKTransitItemIncidentsController_resetCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];

  if (!v4)
  {
    v7 = 1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  [*(*(a1 + 32) + 80) timeIntervalSinceDate:v4];
  v7 = v6 >= 0.0;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v5 timeIntervalSinceDate:*(*(a1 + 32) + 80)];
  v9 = v8 >= 0.0;
LABEL_6:

  return v7 & v9;
}

uint64_t __46__MKTransitItemIncidentsController_resetCache__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isBlockingIncident];
  if (v6 == [v5 isBlockingIncident])
  {
    v8 = [v4 startDate];
    if (v8 && (v9 = v8, [v5 startDate], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = [v5 startDate];
      v12 = [v4 startDate];
      [v11 timeIntervalSinceDate:v12];
      if (v13 < 0.0)
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v14 = [v5 startDate];
      if (v14)
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else if ([v4 isBlockingIncident])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setReferenceDate:(id)date
{
  v4 = [date copy];
  referenceDate = self->_referenceDate;
  self->_referenceDate = v4;

  [(MKTransitItemIncidentsController *)self resetCache];
}

- (MKTransitItemIncidentsController)initWithLineItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKTransitItemIncidentsController;
  v6 = [(MKTransitItemIncidentsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, item);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForLine = v7->_incidentsForLine;
    v7->_incidentsForLine = v8;
  }

  return v7;
}

- (MKTransitItemIncidentsController)initWithMapItem:(id)item
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = MKTransitItemIncidentsController;
  v6 = [(MKTransitItemIncidentsController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForDepartureSequence = v7->_incidentsForDepartureSequence;
    v7->_incidentsForDepartureSequence = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForSystem = v7->_incidentsForSystem;
    v7->_incidentsForSystem = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForLinesInSystem = v7->_incidentsForLinesInSystem;
    v7->_incidentsForLinesInSystem = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForLine = v7->_incidentsForLine;
    v7->_incidentsForLine = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    incidentsForMapItem = v7->_incidentsForMapItem;
    v7->_incidentsForMapItem = v16;
  }

  return v7;
}

@end