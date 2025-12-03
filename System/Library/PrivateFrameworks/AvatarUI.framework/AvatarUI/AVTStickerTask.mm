@interface AVTStickerTask
+ (id)stickerTaskForSchedulerTask:(id)task avatarRecordIdentifier:(id)identifier indexPath:(id)path stickerType:(unint64_t)type;
- (AVTStickerTask)initWithTask:(id)task avatarRecordIdentifier:(id)identifier indexPath:(id)path stickerType:(unint64_t)type;
- (id)description;
@end

@implementation AVTStickerTask

- (AVTStickerTask)initWithTask:(id)task avatarRecordIdentifier:(id)identifier indexPath:(id)path stickerType:(unint64_t)type
{
  taskCopy = task;
  identifierCopy = identifier;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = AVTStickerTask;
  v13 = [(AVTStickerTask *)&v17 init];
  if (v13)
  {
    v14 = [taskCopy copy];
    task = v13->_task;
    v13->_task = v14;

    objc_storeStrong(&v13->_avatarRecordIdentifier, identifier);
    objc_storeStrong(&v13->_indexPath, path);
    v13->_stickerType = type;
  }

  return v13;
}

+ (id)stickerTaskForSchedulerTask:(id)task avatarRecordIdentifier:(id)identifier indexPath:(id)path stickerType:(unint64_t)type
{
  pathCopy = path;
  identifierCopy = identifier;
  taskCopy = task;
  v12 = [objc_alloc(objc_opt_class()) initWithTask:taskCopy avatarRecordIdentifier:identifierCopy indexPath:pathCopy stickerType:type];

  return v12;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AVTStickerTask;
  v3 = [(AVTStickerTask *)&v11 description];
  v4 = [v3 mutableCopy];

  avatarRecordIdentifier = [(AVTStickerTask *)self avatarRecordIdentifier];
  [v4 appendFormat:@" identifier: %@", avatarRecordIdentifier];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AVTStickerTask stickerType](self, "stickerType")}];
  [v4 appendFormat:@" stickerType: %@", v6];

  indexPath = [(AVTStickerTask *)self indexPath];

  if (indexPath)
  {
    indexPath2 = [(AVTStickerTask *)self indexPath];
    [v4 appendFormat:@" indexPath.row: %ld", objc_msgSend(indexPath2, "row")];
  }

  v9 = [v4 copy];

  return v9;
}

@end