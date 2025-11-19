@interface AVTStickerTask
+ (id)stickerTaskForSchedulerTask:(id)a3 avatarRecordIdentifier:(id)a4 indexPath:(id)a5 stickerType:(unint64_t)a6;
- (AVTStickerTask)initWithTask:(id)a3 avatarRecordIdentifier:(id)a4 indexPath:(id)a5 stickerType:(unint64_t)a6;
- (id)description;
@end

@implementation AVTStickerTask

- (AVTStickerTask)initWithTask:(id)a3 avatarRecordIdentifier:(id)a4 indexPath:(id)a5 stickerType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = AVTStickerTask;
  v13 = [(AVTStickerTask *)&v17 init];
  if (v13)
  {
    v14 = [v10 copy];
    task = v13->_task;
    v13->_task = v14;

    objc_storeStrong(&v13->_avatarRecordIdentifier, a4);
    objc_storeStrong(&v13->_indexPath, a5);
    v13->_stickerType = a6;
  }

  return v13;
}

+ (id)stickerTaskForSchedulerTask:(id)a3 avatarRecordIdentifier:(id)a4 indexPath:(id)a5 stickerType:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_opt_class()) initWithTask:v11 avatarRecordIdentifier:v10 indexPath:v9 stickerType:a6];

  return v12;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AVTStickerTask;
  v3 = [(AVTStickerTask *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTStickerTask *)self avatarRecordIdentifier];
  [v4 appendFormat:@" identifier: %@", v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AVTStickerTask stickerType](self, "stickerType")}];
  [v4 appendFormat:@" stickerType: %@", v6];

  v7 = [(AVTStickerTask *)self indexPath];

  if (v7)
  {
    v8 = [(AVTStickerTask *)self indexPath];
    [v4 appendFormat:@" indexPath.row: %ld", objc_msgSend(v8, "row")];
  }

  v9 = [v4 copy];

  return v9;
}

@end