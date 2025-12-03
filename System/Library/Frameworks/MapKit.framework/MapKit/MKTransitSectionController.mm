@interface MKTransitSectionController
- (BOOL)hasFilteredLines;
- (BOOL)hasFilteredRows;
- (MKTransitSectionController)init;
- (MKTransitSectionController)initWithMapItem:(id)item system:(id)system;
- (id)linesToShow;
- (unint64_t)numberOfRows;
- (void)_buildRows;
- (void)incrementPagingFilter;
- (void)setDepartureCutoffDate:(id)date;
- (void)setExpiredHighFrequencyCutoffDate:(id)date;
- (void)setIncidentEntitiesToExclude:(id)exclude;
@end

@implementation MKTransitSectionController

- (void)_buildRows
{
  departureCutoffDate = [(MKTransitSectionController *)self departureCutoffDate];

  if (departureCutoffDate)
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
  _pagingFilter = [(MKTransitSectionController *)self _pagingFilter];
  [_pagingFilter setLimitNumLines:0];

  [(MKTransitSectionController *)self _setNeedsBuildRows];
}

- (void)setIncidentEntitiesToExclude:(id)exclude
{
  excludeCopy = exclude;
  incidentEntitiesToExclude = self->_incidentEntitiesToExclude;
  if (incidentEntitiesToExclude != excludeCopy)
  {
    v8 = excludeCopy;
    v7 = [(NSSet *)incidentEntitiesToExclude isEqualToSet:excludeCopy];
    excludeCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_incidentEntitiesToExclude, exclude);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      excludeCopy = v8;
    }
  }
}

- (void)setExpiredHighFrequencyCutoffDate:(id)date
{
  dateCopy = date;
  expiredHighFrequencyCutoffDate = self->_expiredHighFrequencyCutoffDate;
  if (expiredHighFrequencyCutoffDate != dateCopy)
  {
    v8 = dateCopy;
    v7 = [(NSDate *)expiredHighFrequencyCutoffDate isEqualToDate:dateCopy];
    dateCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_expiredHighFrequencyCutoffDate, date);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      dateCopy = v8;
    }
  }
}

- (void)setDepartureCutoffDate:(id)date
{
  dateCopy = date;
  departureCutoffDate = self->_departureCutoffDate;
  if (departureCutoffDate != dateCopy)
  {
    v8 = dateCopy;
    v7 = [(NSDate *)departureCutoffDate isEqualToDate:dateCopy];
    dateCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_departureCutoffDate, date);
      [(MKTransitSectionController *)self _setNeedsBuildRows];
      dateCopy = v8;
    }
  }
}

- (MKTransitSectionController)initWithMapItem:(id)item system:(id)system
{
  itemCopy = item;
  systemCopy = system;
  v12.receiver = self;
  v12.super_class = MKTransitSectionController;
  v9 = [(MKTransitSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v10->_system, system);
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