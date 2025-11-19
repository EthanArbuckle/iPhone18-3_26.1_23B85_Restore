@interface CloudTabGroupBatchItem
- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4;
- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4 deletedRecordIDs:(id)a5;
- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4 updatedRecords:(id)a5 deletedRecordIDs:(id)a6;
- (CloudTabGroupBatchItem)initWithChange:(id)a3 updatedRecords:(id)a4;
- (CloudTabGroupBatchItem)initWithChange:(id)a3 updatedRecords:(id)a4 deletedRecordIDs:(id)a5;
@end

@implementation CloudTabGroupBatchItem

- (CloudTabGroupBatchItem)initWithChange:(id)a3 updatedRecords:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSSet set];
  v9 = [(CloudTabGroupBatchItem *)self initWithChange:v7 updatedRecords:v6 deletedRecordIDs:v8];

  return v9;
}

- (CloudTabGroupBatchItem)initWithChange:(id)a3 updatedRecords:(id)a4 deletedRecordIDs:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSSet set];
  v12 = [(CloudTabGroupBatchItem *)self initWithChange:v10 deletedRecordZoneIDs:v11 updatedRecords:v9 deletedRecordIDs:v8];

  return v12;
}

- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSSet set];
  v9 = +[NSSet set];
  v10 = [(CloudTabGroupBatchItem *)self initWithChange:v7 deletedRecordZoneIDs:v6 updatedRecords:v8 deletedRecordIDs:v9];

  return v10;
}

- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4 deletedRecordIDs:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSSet set];
  v12 = [(CloudTabGroupBatchItem *)self initWithChange:v10 deletedRecordZoneIDs:v9 updatedRecords:v11 deletedRecordIDs:v8];

  return v12;
}

- (CloudTabGroupBatchItem)initWithChange:(id)a3 deletedRecordZoneIDs:(id)a4 updatedRecords:(id)a5 deletedRecordIDs:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = CloudTabGroupBatchItem;
  v15 = [(CloudTabGroupBatchItem *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_change, a3);
    v17 = [v12 copy];
    deletedRecordZoneIDs = v16->_deletedRecordZoneIDs;
    v16->_deletedRecordZoneIDs = v17;

    v19 = [v13 copy];
    updatedRecords = v16->_updatedRecords;
    v16->_updatedRecords = v19;

    v21 = [v14 copy];
    deletedRecordIDs = v16->_deletedRecordIDs;
    v16->_deletedRecordIDs = v21;

    v23 = v16;
  }

  return v16;
}

@end