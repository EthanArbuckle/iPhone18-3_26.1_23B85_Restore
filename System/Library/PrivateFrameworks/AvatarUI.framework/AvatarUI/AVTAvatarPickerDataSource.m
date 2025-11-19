@interface AVTAvatarPickerDataSource
- (AVTAvatarPickerDataSource)initWithRecordDataSource:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
- (AVTAvatarStore)store;
- (BOOL)canCreateMemoji;
- (BOOL)isItemAtIndexAddItem:(int64_t)a3;
- (id)itemAtIndex:(int64_t)a3;
- (int64_t)indexOfAddItem;
- (int64_t)numberOfItems;
- (void)reloadModel;
@end

@implementation AVTAvatarPickerDataSource

- (AVTAvatarPickerDataSource)initWithRecordDataSource:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AVTAvatarPickerDataSource;
  v11 = [(AVTAvatarPickerDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordDataSource, a3);
    objc_storeStrong(&v12->_environment, a4);
    v12->_allowAddItem = a5;
  }

  return v12;
}

- (AVTAvatarStore)store
{
  v2 = [(AVTAvatarPickerDataSource *)self recordDataSource];
  v3 = [v2 recordStore];

  return v3;
}

- (BOOL)canCreateMemoji
{
  v3 = [(AVTAvatarPickerDataSource *)self allowAddItem];
  if (v3)
  {
    v4 = [(AVTAvatarPickerDataSource *)self recordDataSource];
    v5 = [v4 recordStore];
    v6 = [v5 canCreateAvatar];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (void)reloadModel
{
  v16 = [MEMORY[0x1E695DF70] array];
  if ([(AVTAvatarPickerDataSource *)self canCreateMemoji])
  {
    v3 = [AVTCircularButton alloc];
    v4 = [(AVTCircularButton *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTCircularButton *)v4 setSymbolImageWithName:@"plus"];
    v5 = [[AVTAvatarListViewItem alloc] initWithView:v4];
    [(AVTAvatarPickerDataSource *)self setAddItem:v5];

    v6 = [(AVTAvatarPickerDataSource *)self addItem];
    [v16 addObject:v6];
  }

  else
  {
    [(AVTAvatarPickerDataSource *)self setAddItem:0];
  }

  v7 = [(AVTAvatarPickerDataSource *)self recordDataSource];
  objc_sync_enter(v7);
  v8 = [(AVTAvatarPickerDataSource *)self recordDataSource];
  v9 = [v8 numberOfRecords];

  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [(AVTAvatarPickerDataSource *)self recordDataSource];
      v12 = [v11 recordAtIndex:i];

      v13 = [[AVTAvatarListRecordItem alloc] initWithAvatar:v12];
      [v16 addObject:v13];
    }
  }

  objc_sync_exit(v7);

  v14 = [(AVTAvatarPickerDataSource *)self items];
  objc_sync_enter(v14);
  v15 = [v16 copy];
  [(AVTAvatarPickerDataSource *)self setItems:v15];

  objc_sync_exit(v14);
}

- (int64_t)numberOfItems
{
  v2 = [(AVTAvatarPickerDataSource *)self items];
  v3 = [v2 count];

  return v3;
}

- (id)itemAtIndex:(int64_t)a3
{
  v5 = [(AVTAvatarPickerDataSource *)self items];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(AVTAvatarPickerDataSource *)self items];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (BOOL)isItemAtIndexAddItem:(int64_t)a3
{
  v5 = [(AVTAvatarPickerDataSource *)self items];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(AVTAvatarPickerDataSource *)self itemAtIndex:a3];
  v8 = [(AVTAvatarPickerDataSource *)self addItem];
  v9 = v7 == v8;

  return v9;
}

- (int64_t)indexOfAddItem
{
  v3 = [(AVTAvatarPickerDataSource *)self addItem];

  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(AVTAvatarPickerDataSource *)self items];
  v5 = [(AVTAvatarPickerDataSource *)self addItem];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

@end