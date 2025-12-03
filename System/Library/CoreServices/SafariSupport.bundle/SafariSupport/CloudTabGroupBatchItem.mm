@interface CloudTabGroupBatchItem
- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds;
- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds deletedRecordIDs:(id)iDs;
- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds updatedRecords:(id)records deletedRecordIDs:(id)iDs;
- (CloudTabGroupBatchItem)initWithChange:(id)change updatedRecords:(id)records;
- (CloudTabGroupBatchItem)initWithChange:(id)change updatedRecords:(id)records deletedRecordIDs:(id)ds;
@end

@implementation CloudTabGroupBatchItem

- (CloudTabGroupBatchItem)initWithChange:(id)change updatedRecords:(id)records
{
  recordsCopy = records;
  changeCopy = change;
  v8 = +[NSSet set];
  v9 = [(CloudTabGroupBatchItem *)self initWithChange:changeCopy updatedRecords:recordsCopy deletedRecordIDs:v8];

  return v9;
}

- (CloudTabGroupBatchItem)initWithChange:(id)change updatedRecords:(id)records deletedRecordIDs:(id)ds
{
  dsCopy = ds;
  recordsCopy = records;
  changeCopy = change;
  v11 = +[NSSet set];
  v12 = [(CloudTabGroupBatchItem *)self initWithChange:changeCopy deletedRecordZoneIDs:v11 updatedRecords:recordsCopy deletedRecordIDs:dsCopy];

  return v12;
}

- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds
{
  dsCopy = ds;
  changeCopy = change;
  v8 = +[NSSet set];
  v9 = +[NSSet set];
  v10 = [(CloudTabGroupBatchItem *)self initWithChange:changeCopy deletedRecordZoneIDs:dsCopy updatedRecords:v8 deletedRecordIDs:v9];

  return v10;
}

- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds deletedRecordIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  changeCopy = change;
  v11 = +[NSSet set];
  v12 = [(CloudTabGroupBatchItem *)self initWithChange:changeCopy deletedRecordZoneIDs:dsCopy updatedRecords:v11 deletedRecordIDs:iDsCopy];

  return v12;
}

- (CloudTabGroupBatchItem)initWithChange:(id)change deletedRecordZoneIDs:(id)ds updatedRecords:(id)records deletedRecordIDs:(id)iDs
{
  changeCopy = change;
  dsCopy = ds;
  recordsCopy = records;
  iDsCopy = iDs;
  v25.receiver = self;
  v25.super_class = CloudTabGroupBatchItem;
  v15 = [(CloudTabGroupBatchItem *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_change, change);
    v17 = [dsCopy copy];
    deletedRecordZoneIDs = v16->_deletedRecordZoneIDs;
    v16->_deletedRecordZoneIDs = v17;

    v19 = [recordsCopy copy];
    updatedRecords = v16->_updatedRecords;
    v16->_updatedRecords = v19;

    v21 = [iDsCopy copy];
    deletedRecordIDs = v16->_deletedRecordIDs;
    v16->_deletedRecordIDs = v21;

    v23 = v16;
  }

  return v16;
}

@end