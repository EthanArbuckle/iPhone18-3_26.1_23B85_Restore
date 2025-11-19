@interface AVTAvatarLibraryRecordItem
- (AVTAvatarLibraryRecordItem)initWithAvatarRecord:(id)a3 environment:(id)a4;
- (void)configureCell:(id)a3 imageProvider:(id)a4;
@end

@implementation AVTAvatarLibraryRecordItem

- (AVTAvatarLibraryRecordItem)initWithAvatarRecord:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = AVTAvatarLibraryRecordItem;
  v9 = [(AVTAvatarLibraryRecordItem *)&v11 init];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v7}];
    }

    objc_storeStrong(&v9->_avatarRecord, a3);
    objc_storeStrong(&v9->_environment, a4);
  }

  return v9;
}

- (void)configureCell:(id)a3 imageProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v6}];
  }

  v8 = v6;
  v9 = [(AVTAvatarLibraryRecordItem *)self environment];
  [v9 mainScreenScale];
  v11 = v10;

  v12 = [[AVTRenderingScope alloc] initWithRenderingType:101 scale:v11];
  v13 = [(AVTAvatarLibraryRecordItem *)self avatarRecord];
  v14 = [v7 providerForRecord:v13 scope:v12];

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