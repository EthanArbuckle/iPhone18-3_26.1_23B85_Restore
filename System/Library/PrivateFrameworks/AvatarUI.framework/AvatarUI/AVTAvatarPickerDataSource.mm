@interface AVTAvatarPickerDataSource
- (AVTAvatarPickerDataSource)initWithRecordDataSource:(id)source environment:(id)environment allowAddItem:(BOOL)item;
- (AVTAvatarStore)store;
- (BOOL)canCreateMemoji;
- (BOOL)isItemAtIndexAddItem:(int64_t)item;
- (id)itemAtIndex:(int64_t)index;
- (int64_t)indexOfAddItem;
- (int64_t)numberOfItems;
- (void)reloadModel;
@end

@implementation AVTAvatarPickerDataSource

- (AVTAvatarPickerDataSource)initWithRecordDataSource:(id)source environment:(id)environment allowAddItem:(BOOL)item
{
  sourceCopy = source;
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = AVTAvatarPickerDataSource;
  v11 = [(AVTAvatarPickerDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordDataSource, source);
    objc_storeStrong(&v12->_environment, environment);
    v12->_allowAddItem = item;
  }

  return v12;
}

- (AVTAvatarStore)store
{
  recordDataSource = [(AVTAvatarPickerDataSource *)self recordDataSource];
  recordStore = [recordDataSource recordStore];

  return recordStore;
}

- (BOOL)canCreateMemoji
{
  allowAddItem = [(AVTAvatarPickerDataSource *)self allowAddItem];
  if (allowAddItem)
  {
    recordDataSource = [(AVTAvatarPickerDataSource *)self recordDataSource];
    recordStore = [recordDataSource recordStore];
    canCreateAvatar = [recordStore canCreateAvatar];

    LOBYTE(allowAddItem) = canCreateAvatar;
  }

  return allowAddItem;
}

- (void)reloadModel
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(AVTAvatarPickerDataSource *)self canCreateMemoji])
  {
    v3 = [AVTCircularButton alloc];
    v4 = [(AVTCircularButton *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTCircularButton *)v4 setSymbolImageWithName:@"plus"];
    v5 = [[AVTAvatarListViewItem alloc] initWithView:v4];
    [(AVTAvatarPickerDataSource *)self setAddItem:v5];

    addItem = [(AVTAvatarPickerDataSource *)self addItem];
    [array addObject:addItem];
  }

  else
  {
    [(AVTAvatarPickerDataSource *)self setAddItem:0];
  }

  recordDataSource = [(AVTAvatarPickerDataSource *)self recordDataSource];
  objc_sync_enter(recordDataSource);
  recordDataSource2 = [(AVTAvatarPickerDataSource *)self recordDataSource];
  numberOfRecords = [recordDataSource2 numberOfRecords];

  if (numberOfRecords >= 1)
  {
    for (i = 0; i != numberOfRecords; ++i)
    {
      recordDataSource3 = [(AVTAvatarPickerDataSource *)self recordDataSource];
      v12 = [recordDataSource3 recordAtIndex:i];

      v13 = [[AVTAvatarListRecordItem alloc] initWithAvatar:v12];
      [array addObject:v13];
    }
  }

  objc_sync_exit(recordDataSource);

  items = [(AVTAvatarPickerDataSource *)self items];
  objc_sync_enter(items);
  v15 = [array copy];
  [(AVTAvatarPickerDataSource *)self setItems:v15];

  objc_sync_exit(items);
}

- (int64_t)numberOfItems
{
  items = [(AVTAvatarPickerDataSource *)self items];
  v3 = [items count];

  return v3;
}

- (id)itemAtIndex:(int64_t)index
{
  items = [(AVTAvatarPickerDataSource *)self items];
  v6 = [items count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    items2 = [(AVTAvatarPickerDataSource *)self items];
    v8 = [items2 objectAtIndex:index];
  }

  return v8;
}

- (BOOL)isItemAtIndexAddItem:(int64_t)item
{
  items = [(AVTAvatarPickerDataSource *)self items];
  v6 = [items count];

  if (v6 <= item)
  {
    return 0;
  }

  v7 = [(AVTAvatarPickerDataSource *)self itemAtIndex:item];
  addItem = [(AVTAvatarPickerDataSource *)self addItem];
  v9 = v7 == addItem;

  return v9;
}

- (int64_t)indexOfAddItem
{
  addItem = [(AVTAvatarPickerDataSource *)self addItem];

  if (!addItem)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  items = [(AVTAvatarPickerDataSource *)self items];
  addItem2 = [(AVTAvatarPickerDataSource *)self addItem];
  v6 = [items indexOfObject:addItem2];

  return v6;
}

@end