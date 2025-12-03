@interface MKTransitInactiveLinesSectionController
- (MKTransitInactiveLinesSectionController)init;
- (MKTransitInactiveLinesSectionController)initWithMapItem:(id)item system:(id)system line:(id)line;
- (NSArray)inactiveLines;
- (id)_pagingFilter;
- (void)_buildRows;
- (void)_setNeedsBuildRows;
@end

@implementation MKTransitInactiveLinesSectionController

- (void)_buildRows
{
  selfCopy = self;
  v46[1] = *MEMORY[0x1E69E9840];
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    v44.receiver = selfCopy;
    v44.super_class = MKTransitInactiveLinesSectionController;
    [(MKTransitSectionController *)&v44 _buildRows];
    _pagingFilter = [(MKTransitInactiveLinesSectionController *)selfCopy _pagingFilter];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __53__MKTransitInactiveLinesSectionController__buildRows__block_invoke;
    v43[3] = &unk_1E76C7AC8;
    v43[4] = selfCopy;
    v4 = MEMORY[0x1A58E9F30](v43);
    if (selfCopy->_line)
    {
      v46[0] = selfCopy->_line;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    }

    else
    {
      v5 = 0;
    }

    v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    if ([_pagingFilter limitNumLines])
    {
      v6 = [v5 count];
      v34 = v6 >= [_pagingFilter numLinesFallbackThreshold];
    }

    else
    {
      v34 = 0;
    }

    numLinesFallbackValue = [_pagingFilter numLinesFallbackValue];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v5;
    v38 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    v29 = _pagingFilter;
    v7 = 0;
    if (v38)
    {
      v8 = *v40;
      v32 = v4;
      v33 = selfCopy;
      v31 = *v40;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          v11 = v4[2](v4, v10);
          _transitInfo = [(MKMapItem *)selfCopy->super._mapItem _transitInfo];
          incidentEntitiesToExclude = [(MKTransitSectionController *)selfCopy incidentEntitiesToExclude];
          v14 = [_transitInfo serviceResumesResultForLine:v10 excludingIncidentEntities:incidentEntitiesToExclude afterDate:v11 usingContainers:1];

          blocked = [v14 blocked];
          earliestNextDepartureDate = [v14 earliestNextDepartureDate];
          v17 = earliestNextDepartureDate;
          if ((blocked & 1) != 0 || earliestNextDepartureDate)
          {
            if (!v34 || [v36 count] != numLinesFallbackValue)
            {
              v18 = [_MKTransitInactiveLine alloc];
              v37 = v7;
              if (blocked)
              {
                v19 = 0;
              }

              else
              {
                v19 = v17;
              }

              timeZone = [(MKMapItem *)selfCopy->super._mapItem timeZone];
              departureSequence = [v14 departureSequence];
              v22 = v18;
              v8 = v31;
              v23 = [(_MKTransitInactiveLine *)v22 initWithTransitLine:v10 blocked:blocked serviceResumesDate:v19 timeZone:timeZone referenceDate:v11 departuresSequence:departureSequence];
              [v36 addObject:v23];

              v7 = v37;
              v4 = v32;

              selfCopy = v33;
            }
          }

          else
          {
            ++v7;
          }
        }

        v38 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v38);
    }

    v24 = [obj count];
    selfCopy->super._numberOfFilteredLines = v24 - v7 - [v36 count];
    v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v36];
    inactiveLines = selfCopy->_inactiveLines;
    selfCopy->_inactiveLines = v25;

    selfCopy->super._numberOfRows = [(NSArray *)selfCopy->_inactiveLines count];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:obj];
    linesToShow = selfCopy->super._linesToShow;
    selfCopy->super._linesToShow = v27;
  }
}

id __53__MKTransitInactiveLinesSectionController__buildRows__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  if (v4 && ![v3 departuresAreVehicleSpecific])
  {
    v5 = [*(a1 + 32) expiredHighFrequencyCutoffDate];
  }

  else
  {
    v5 = [*(a1 + 32) departureCutoffDate];
  }

  v6 = v5;

  return v6;
}

- (void)_setNeedsBuildRows
{
  v4.receiver = self;
  v4.super_class = MKTransitInactiveLinesSectionController;
  [(MKTransitSectionController *)&v4 _setNeedsBuildRows];
  inactiveLines = self->_inactiveLines;
  self->_inactiveLines = 0;
}

- (id)_pagingFilter
{
  pagingFilter = self->super.__pagingFilter;
  if (!pagingFilter)
  {
    v4 = +[MKTransitSectionPagingFilter defaultFilterForInactiveLines];
    v5 = self->super.__pagingFilter;
    self->super.__pagingFilter = v4;

    pagingFilter = self->super.__pagingFilter;
  }

  return pagingFilter;
}

- (NSArray)inactiveLines
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitInactiveLinesSectionController *)self _buildRows];
  }

  inactiveLines = self->_inactiveLines;

  return inactiveLines;
}

- (MKTransitInactiveLinesSectionController)initWithMapItem:(id)item system:(id)system line:(id)line
{
  lineCopy = line;
  v13.receiver = self;
  v13.super_class = MKTransitInactiveLinesSectionController;
  v10 = [(MKTransitSectionController *)&v13 initWithMapItem:item system:system];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_line, line);
  }

  return v11;
}

- (MKTransitInactiveLinesSectionController)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end