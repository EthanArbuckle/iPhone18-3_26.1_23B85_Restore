@interface AVTAvatarLibraryRecordItem
- (AVTAvatarLibraryRecordItem)initWithAvatarRecord:(id)record environment:(id)environment;
- (void)configureCell:(id)cell imageProvider:(id)provider;
@end

@implementation AVTAvatarLibraryRecordItem

- (AVTAvatarLibraryRecordItem)initWithAvatarRecord:(id)record environment:(id)environment
{
  recordCopy = record;
  environmentCopy = environment;
  v11.receiver = self;
  v11.super_class = AVTAvatarLibraryRecordItem;
  v9 = [(AVTAvatarLibraryRecordItem *)&v11 init];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", recordCopy}];
    }

    objc_storeStrong(&v9->_avatarRecord, record);
    objc_storeStrong(&v9->_environment, environment);
  }

  return v9;
}

- (void)configureCell:(id)cell imageProvider:(id)provider
{
  cellCopy = cell;
  providerCopy = provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", cellCopy}];
  }

  v8 = cellCopy;
  environment = [(AVTAvatarLibraryRecordItem *)self environment];
  [environment mainScreenScale];
  v11 = v10;

  v12 = [[AVTRenderingScope alloc] initWithRenderingType:101 scale:v11];
  avatarRecord = [(AVTAvatarLibraryRecordItem *)self avatarRecord];
  v14 = [providerCopy providerForRecord:avatarRecord scope:v12];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__AVTAvatarLibraryRecordItem_configureCell_imageProvider___block_invoke;
  v18[3] = &unk_1E7F3A658;
  v19 = v8;
  v15 = v14[2];
  v16 = v8;
  v17 = v15(v14, v18, 1);
}

@end