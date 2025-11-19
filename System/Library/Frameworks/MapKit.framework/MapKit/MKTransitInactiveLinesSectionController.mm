@interface MKTransitInactiveLinesSectionController
- (MKTransitInactiveLinesSectionController)init;
- (MKTransitInactiveLinesSectionController)initWithMapItem:(id)a3 system:(id)a4 line:(id)a5;
- (NSArray)inactiveLines;
- (id)_pagingFilter;
- (void)_buildRows;
- (void)_setNeedsBuildRows;
@end

@implementation MKTransitInactiveLinesSectionController

- (void)_buildRows
{
  v2 = self;
  v46[1] = *MEMORY[0x1E69E9840];
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    v44.receiver = v2;
    v44.super_class = MKTransitInactiveLinesSectionController;
    [(MKTransitSectionController *)&v44 _buildRows];
    v3 = [(MKTransitInactiveLinesSectionController *)v2 _pagingFilter];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __53__MKTransitInactiveLinesSectionController__buildRows__block_invoke;
    v43[3] = &unk_1E76C7AC8;
    v43[4] = v2;
    v4 = MEMORY[0x1A58E9F30](v43);
    if (v2->_line)
    {
      v46[0] = v2->_line;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    }

    else
    {
      v5 = 0;
    }

    v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    if ([v3 limitNumLines])
    {
      v6 = [v5 count];
      v34 = v6 >= [v3 numLinesFallbackThreshold];
    }

    else
    {
      v34 = 0;
    }

    v30 = [v3 numLinesFallbackValue];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v5;
    v38 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    v29 = v3;
    v7 = 0;
    if (v38)
    {
      v8 = *v40;
      v32 = v4;
      v33 = v2;
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
          v12 = [(MKMapItem *)v2->super._mapItem _transitInfo];
          v13 = [(MKTransitSectionController *)v2 incidentEntitiesToExclude];
          v14 = [v12 serviceResumesResultForLine:v10 excludingIncidentEntities:v13 afterDate:v11 usingContainers:1];

          v15 = [v14 blocked];
          v16 = [v14 earliestNextDepartureDate];
          v17 = v16;
          if ((v15 & 1) != 0 || v16)
          {
            if (!v34 || [v36 count] != v30)
            {
              v18 = [_MKTransitInactiveLine alloc];
              v37 = v7;
              if (v15)
              {
                v19 = 0;
              }

              else
              {
                v19 = v17;
              }

              v20 = [(MKMapItem *)v2->super._mapItem timeZone];
              v21 = [v14 departureSequence];
              v22 = v18;
              v8 = v31;
              v23 = [(_MKTransitInactiveLine *)v22 initWithTransitLine:v10 blocked:v15 serviceResumesDate:v19 timeZone:v20 referenceDate:v11 departuresSequence:v21];
              [v36 addObject:v23];

              v7 = v37;
              v4 = v32;

              v2 = v33;
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
    v2->super._numberOfFilteredLines = v24 - v7 - [v36 count];
    v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v36];
    inactiveLines = v2->_inactiveLines;
    v2->_inactiveLines = v25;

    v2->super._numberOfRows = [(NSArray *)v2->_inactiveLines count];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:obj];
    linesToShow = v2->super._linesToShow;
    v2->super._linesToShow = v27;
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

- (MKTransitInactiveLinesSectionController)initWithMapItem:(id)a3 system:(id)a4 line:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MKTransitInactiveLinesSectionController;
  v10 = [(MKTransitSectionController *)&v13 initWithMapItem:a3 system:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_line, a5);
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