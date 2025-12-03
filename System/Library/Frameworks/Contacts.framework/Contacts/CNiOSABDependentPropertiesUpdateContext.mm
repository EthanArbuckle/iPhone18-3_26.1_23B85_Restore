@interface CNiOSABDependentPropertiesUpdateContext
+ (id)os_log;
- (BOOL)flushPendingImageChangesToPerson:(void *)person logger:(id)logger error:(id *)error;
- (BOOL)logIfConditionFailed:(BOOL)failed message:(id)message error:(__CFError *)error;
- (BOOL)setWatchChangesforThumbnailImageDataToPerson:(void *)person error:(id *)error;
- (CGRect)pendingCropRect;
- (void)generateBackgroundColorsForImageDataIfNeeded:(void *)needed;
- (void)resetAllData;
- (void)setPendingCropRect:(CGRect)rect;
- (void)setPendingImageData:(id)data;
- (void)setPendingSyncImageData:(id)data;
- (void)setPendingThumbnailImageData:(id)data;
@end

@implementation CNiOSABDependentPropertiesUpdateContext

+ (id)os_log
{
  if (os_log_cn_once_token_0_17 != -1)
  {
    +[CNiOSABDependentPropertiesUpdateContext os_log];
  }

  v3 = os_log_cn_once_object_0_17;

  return v3;
}

uint64_t __49__CNiOSABDependentPropertiesUpdateContext_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNiOSABDependentPropertiesUpdateContext");
  v1 = os_log_cn_once_object_0_17;
  os_log_cn_once_object_0_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setPendingImageData:(id)data
{
  if (self->_pendingImageData != data)
  {
    v4 = [data copy];
    pendingImageData = self->_pendingImageData;
    self->_pendingImageData = v4;
  }

  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingImageData:1];
}

- (void)setPendingCropRect:(CGRect)rect
{
  self->_pendingCropRect = rect;
  v4 = !CGRectEqualToRect(rect, *MEMORY[0x1E695F058]);

  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingCropRect:v4];
}

- (void)setPendingThumbnailImageData:(id)data
{
  if (self->_pendingThumbnailImageData != data)
  {
    v4 = [data copy];
    pendingThumbnailImageData = self->_pendingThumbnailImageData;
    self->_pendingThumbnailImageData = v4;
  }

  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingThumbnailImageData:1];
}

- (void)setPendingSyncImageData:(id)data
{
  if (self->_pendingSyncImageData != data)
  {
    v4 = [data copy];
    pendingSyncImageData = self->_pendingSyncImageData;
    self->_pendingSyncImageData = v4;
  }

  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingSyncImageData:1];
}

- (void)resetAllData
{
  pendingImageData = self->_pendingImageData;
  self->_pendingImageData = 0;

  pendingThumbnailImageData = self->_pendingThumbnailImageData;
  self->_pendingThumbnailImageData = 0;

  pendingFullscreenImageData = self->_pendingFullscreenImageData;
  self->_pendingFullscreenImageData = 0;

  pendingSyncImageData = self->_pendingSyncImageData;
  self->_pendingSyncImageData = 0;

  v7 = *(MEMORY[0x1E695F058] + 16);
  self->_pendingCropRect.origin = *MEMORY[0x1E695F058];
  self->_pendingCropRect.size = v7;
  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingCropRect:0];
  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingImageData:0];
  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingThumbnailImageData:0];
  [(CNiOSABDependentPropertiesUpdateContext *)self setHasPendingSyncImageData:0];

  [(CNiOSABDependentPropertiesUpdateContext *)self setUpdatingAvatarRecipeData:0];
}

- (BOOL)logIfConditionFailed:(BOOL)failed message:(id)message error:(__CFError *)error
{
  messageCopy = message;
  if (!failed)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNiOSABDependentPropertiesUpdateContext logIfConditionFailed:messageCopy message:error error:os_log];
    }
  }

  return 1;
}

- (BOOL)flushPendingImageChangesToPerson:(void *)person logger:(id)logger error:(id *)error
{
  loggerCopy = logger;
  if ([(CNiOSABDependentPropertiesUpdateContext *)self hasPendingImageData]|| [(CNiOSABDependentPropertiesUpdateContext *)self hasPendingThumbnailImageData])
  {
    v9 = 0;
  }

  else
  {
    v9 = ![(CNiOSABDependentPropertiesUpdateContext *)self hasPendingCropRect];
  }

  if (![(CNiOSABDependentPropertiesUpdateContext *)self updatingAvatarRecipeData]&& (v9 & 1) == 0)
  {
    ABPersonClearAvatarRecipeData();
  }

  if ([(CNiOSABDependentPropertiesUpdateContext *)self hasPendingImageData]|| [(CNiOSABDependentPropertiesUpdateContext *)self hasPendingThumbnailImageData])
  {
    [(CNiOSABDependentPropertiesUpdateContext *)self generateBackgroundColorsForImageDataIfNeeded:person];
  }

  hasPendingImageData = [(CNiOSABDependentPropertiesUpdateContext *)self hasPendingImageData];
  hasPendingCropRect = [(CNiOSABDependentPropertiesUpdateContext *)self hasPendingCropRect];
  if (hasPendingImageData)
  {
    if (hasPendingCropRect)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_2;
      v29[3] = &unk_1E7416540;
      v29[4] = self;
      v30 = loggerCopy;
      personCopy = person;
      v12 = CNBridgeBoolResultAndErrorFromBlock(error, v29);
      v13 = v30;
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke;
      v32[3] = &unk_1E7416540;
      v33 = loggerCopy;
      selfCopy = self;
      personCopy2 = person;
      v12 = CNBridgeBoolResultAndErrorFromBlock(error, v32);
      v13 = v33;
    }

    goto LABEL_23;
  }

  if (hasPendingCropRect)
  {
    [(CNiOSABDependentPropertiesUpdateContext *)self pendingCropRect];
    if (CGRectEqualToRect(v36, *MEMORY[0x1E695F058]))
    {
LABEL_16:
      v12 = 1;
      goto LABEL_24;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_3;
    v25[3] = &unk_1E7416540;
    personCopy3 = person;
    v26 = loggerCopy;
    selfCopy2 = self;
    v12 = CNBridgeBoolResultAndErrorFromBlock(error, v25);
    v13 = v26;
LABEL_23:

    goto LABEL_24;
  }

  pendingFullscreenImageData = [(CNiOSABDependentPropertiesUpdateContext *)self pendingFullscreenImageData];

  if (!pendingFullscreenImageData)
  {
    if ([(CNiOSABDependentPropertiesUpdateContext *)self hasPendingThumbnailImageData])
    {
      pendingThumbnailImageData = [(CNiOSABDependentPropertiesUpdateContext *)self pendingThumbnailImageData];
      [loggerCopy setContactImageDataZeroCropRect:pendingThumbnailImageData format:"watch changes"];

      v12 = [(CNiOSABDependentPropertiesUpdateContext *)self setWatchChangesforThumbnailImageDataToPerson:person error:error];
      goto LABEL_24;
    }

    if (![(CNiOSABDependentPropertiesUpdateContext *)self hasPendingSyncImageData])
    {
      goto LABEL_16;
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_29;
    v21 = &unk_1E7416540;
    v22 = loggerCopy;
    selfCopy3 = self;
    personCopy4 = person;
    v12 = CNBridgeBoolResultAndErrorFromBlock(error, &v18);
    v13 = v22;
    goto LABEL_23;
  }

  v15 = os_log_create("com.apple.contacts", "data-access-error");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CNiOSABDependentPropertiesUpdateContext flushPendingImageChangesToPerson:v15 logger:? error:?];
  }

  CNSetError(error, 1015, 0);
  [(CNiOSABDependentPropertiesUpdateContext *)self logIfConditionFailed:0 message:@"not permitted to set fullscreen image data" error:0];
  v12 = 0;
LABEL_24:
  [(CNiOSABDependentPropertiesUpdateContext *)self resetAllData:v18];

  return v12;
}

BOOL __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke(uint64_t a1, CFErrorRef *a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) pendingImageData];
  [v4 setContactImageData:v5];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) pendingImageData];
  v8 = ABPersonSetImageData(v6, v7, a2);

  [*(a1 + 40) logIfConditionFailed:v8 message:@"failed to set image data" error:a2];
  return v8;
}

BOOL __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_2(uint64_t a1, CFErrorRef *a2)
{
  v4 = [*(a1 + 32) pendingImageData];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [*(a1 + 32) pendingImageData];
    [*(a1 + 32) pendingCropRect];
    [v5 setContactImageData:v6 format:"original" cropRect:?];

    v7 = [*(a1 + 32) pendingImageData];
    [*(a1 + 32) pendingCropRect];
    CGRectGetMinX(v25);
    [*(a1 + 32) pendingCropRect];
    CGRectGetMinY(v26);
    [*(a1 + 32) pendingCropRect];
    CGRectGetWidth(v27);
    [*(a1 + 32) pendingCropRect];
    CGRectGetHeight(v28);
    v8 = ABPersonSetImageDataWithCropRect();

    [*(a1 + 32) logIfConditionFailed:v8 message:@"failed to set image data with crop rect" error:a2];
    if (!v8)
    {
      return 0;
    }

    v9 = [*(a1 + 32) pendingThumbnailImageData];

    if (!v9 || (v10 = *(a1 + 40), [*(a1 + 32) pendingThumbnailImageData], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setContactImageDataZeroCropRect:format:", v11, "thumbnail"), v11, objc_msgSend(*(a1 + 32), "pendingThumbnailImageData"), v12 = objc_claimAutoreleasedReturnValue(), v13 = ABPersonSetImageDataAndCropRect(), v12, objc_msgSend(*(a1 + 32), "logIfConditionFailed:message:error:", v13, @"failed to set thumbnail image data", a2), v13))
    {
      v14 = [*(a1 + 32) pendingFullscreenImageData];

      if (!v14 || (v15 = *(a1 + 40), [*(a1 + 32) pendingFullscreenImageData], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setContactImageDataZeroCropRect:format:", v16, "fullscreen"), v16, objc_msgSend(*(a1 + 32), "pendingFullscreenImageData"), v17 = objc_claimAutoreleasedReturnValue(), v13 = ABPersonSetImageDataAndCropRect(), v17, objc_msgSend(*(a1 + 32), "logIfConditionFailed:message:error:", v13, @"failed to set fullscreen image data", a2), v13))
      {
        v18 = [*(a1 + 32) pendingSyncImageData];

        if (v18)
        {
          v19 = *(a1 + 40);
          v20 = [*(a1 + 32) pendingSyncImageData];
          [v19 setContactImageDataZeroCropRect:v20 format:"sync"];

          v21 = [*(a1 + 32) pendingSyncImageData];
          v13 = ABPersonSetImageDataAndCropRect();

          [*(a1 + 32) logIfConditionFailed:v13 message:@"failed to set sync image data" error:a2];
        }

        else
        {
          return 1;
        }
      }
    }

    return v13;
  }

  else
  {
    [*(a1 + 40) removeContactImageData];
    v22 = *(a1 + 48);

    return ABPersonRemoveImageData(v22, a2);
  }
}

uint64_t __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = ABPersonCopyImageDataWithFormat(*(a1 + 48), kABPersonImageFormatOriginalSize);
  v5 = *(a1 + 32);
  [*(a1 + 40) pendingCropRect];
  [v5 setContactImageData:v4 format:"original" cropRect:?];
  [*(a1 + 40) pendingCropRect];
  CGRectGetMinX(v8);
  [*(a1 + 40) pendingCropRect];
  CGRectGetMinY(v9);
  [*(a1 + 40) pendingCropRect];
  CGRectGetWidth(v10);
  [*(a1 + 40) pendingCropRect];
  CGRectGetHeight(v11);
  v6 = ABPersonSetImageDataWithCropRect();
  [*(a1 + 40) logIfConditionFailed:v6 message:@"failed to set original image data with crop rect" error:a2];

  return v6;
}

uint64_t __89__CNiOSABDependentPropertiesUpdateContext_flushPendingImageChangesToPerson_logger_error___block_invoke_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pendingSyncImageData];
  [v2 setContactImageDataZeroCropRect:v3 format:"sync"];

  v4 = [*(a1 + 40) pendingSyncImageData];
  v5 = ABPersonSetImageDataAndCropRect();

  return v5;
}

- (BOOL)setWatchChangesforThumbnailImageDataToPerson:(void *)person error:(id *)error
{
  if (!+[CNiOSABDependentPropertiesUpdateContext shouldSetWatchChanges])
  {
    return 1;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CNiOSABDependentPropertiesUpdateContext_setWatchChangesforThumbnailImageDataToPerson_error___block_invoke;
  v8[3] = &unk_1E7416568;
  v8[4] = self;
  v8[5] = person;
  return CNBridgeBoolResultAndErrorFromBlock(error, v8);
}

uint64_t __94__CNiOSABDependentPropertiesUpdateContext_setWatchChangesforThumbnailImageDataToPerson_error___block_invoke(uint64_t a1, CFErrorRef *a2)
{
  v4 = [*(a1 + 32) pendingThumbnailImageData];

  if (v4)
  {
    v5 = [*(a1 + 32) pendingThumbnailImageData];
    v6 = ABPersonSetImageDataDerivedFromFormatAndReturnError();

    v7 = *(a1 + 32);
    v8 = @"failed to set thumbnail image data for watch";
  }

  else
  {
    v6 = ABPersonSetImageData(*(a1 + 40), 0, a2);
    v7 = *(a1 + 32);
    v8 = @"failed to clear image data for watch";
  }

  [v7 logIfConditionFailed:v6 message:v8 error:a2];
  return v6;
}

- (void)generateBackgroundColorsForImageDataIfNeeded:(void *)needed
{
  pendingImageData = [(CNiOSABDependentPropertiesUpdateContext *)self pendingImageData];
  if (pendingImageData || ([(CNiOSABDependentPropertiesUpdateContext *)self pendingThumbnailImageData], (pendingImageData = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = pendingImageData;
    v6 = [MEMORY[0x1E695F658] imageWithData:pendingImageData];
    if (v6)
    {
      v7 = objc_alloc_init(CNCoreImageDerivedColorGenerator);
      v8 = [(CNCoreImageDerivedColorGenerator *)v7 fetchColorsForImage:v6];
      if ([v8 count])
      {
        v9 = [CNCoreImageDerivedColorGenerator encodedDataFromColors:v8];
        ABRecordSetValue(needed, *MEMORY[0x1E698A3A0], v9, 0);
      }
    }
  }
}

- (CGRect)pendingCropRect
{
  x = self->_pendingCropRect.origin.x;
  y = self->_pendingCropRect.origin.y;
  width = self->_pendingCropRect.size.width;
  height = self->_pendingCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)logIfConditionFailed:(uint64_t)a1 message:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = ABLogErrorPtr();
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "flushPendingImageChangesToPerson, %{public}@, error = %{public}@", &v4, 0x16u);
}

@end