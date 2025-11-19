@interface MKTransitSectionController
- (BOOL)hasFilteredLines;
- (BOOL)hasFilteredRows;
- (MKTransitSectionController)init;
- (MKTransitSectionController)initWithMapItem:(id)a3 system:(id)a4;
- (id)linesToShow;
- (unint64_t)numberOfRows;
- (void)_buildRows;
- (void)incrementPagingFilter;
- (void)setDepartureCutoffDate:(id)a3;
- (void)setExpiredHighFrequencyCutoffDate:(id)a3;
- (void)setIncidentEntitiesToExclude:(id)a3;
@end

@implementation MKTransitSectionController

- (void)_buildRows
{
  v3 = [(MKTransitSectionController *)self departureCutoffDate];

  if (v3)
  {
    self->_numberOfFilteredRows = 0;
    self->_numberOfFilteredLines = 0;
    self->_needsBuildRows = 0;
  }
}

- (id)linesToShow
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitSectionController *)self _buildRows];
  }

  linesToShow = self->_linesToShow;

  return linesToShow;
}

- (BOOL)hasFilteredLines
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitSectionController *)self _buildRows];
  }

  return self->_numberOfFilteredLines != 0;
}

- (BOOL)hasFilteredRows
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitSectionController *)self _buildRows];
  }

  return self->_numberOfFilteredRows || self->_numberOfFilteredLines != 0;
}

- (unint64_t)numberOfRows
{
  if ([(MKTransitSectionController *)self _needsBuildRows])
  {
    [(MKTransitSectionController *)self _buildRows];
  }

  return self->_numberOfRows;
}

- (void)incrementPagingFilter
{
  v3 = [(MKTransitSectionController *)self _pagingFilter];
  [v3 setLimitNumLines:0];

  [(MKTransitSectionController *)self _setNeedsBuildRows];
}

- (void)setIncidentEntitiesToExclude:(id)a3
{
  v5 = a3;
  incidentEntitiesToExclude = self->_incidentEntitiesToExclude;
  if (incidentEntitiesToExclude != v5)
  {
    v8 = v5;
    v7 = [(NSSet *)incidentEntitiesToExclude isEqualToSet:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_incidentEntitiesToExclude, a3);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      v5 = v8;
    }
  }
}

- (void)setExpiredHighFrequencyCutoffDate:(id)a3
{
  v5 = a3;
  expiredHighFrequencyCutoffDate = self->_expiredHighFrequencyCutoffDate;
  if (expiredHighFrequencyCutoffDate != v5)
  {
    v8 = v5;
    v7 = [(NSDate *)expiredHighFrequencyCutoffDate isEqualToDate:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_expiredHighFrequencyCutoffDate, a3);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      v5 = v8;
    }
  }
}

- (void)setDepartureCutoffDate:(id)a3
{
  v5 = a3;
  departureCutoffDate = self->_departureCutoffDate;
  if (departureCutoffDate != v5)
  {
    v8 = v5;
    v7 = [(NSDate *)departureCutoffDate isEqualToDate:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_departureCutoffDate, a3);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      v5 = v8;
    }
  }
}

- (MKTransitSectionController)initWithMapItem:(id)a3 system:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKTransitSectionController;
  v9 = [(MKTransitSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    objc_storeStrong(&v10->_system, a4);
    v10->_needsBuildRows = 1;
  }

  return v10;
}

- (MKTransitSectionController)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end