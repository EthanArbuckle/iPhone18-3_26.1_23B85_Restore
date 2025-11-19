@interface AVMetadataObjectInternal
- (AVMetadataObjectInternal)init;
- (CGRect)bounds;
- (void)dealloc;
@end

@implementation AVMetadataObjectInternal

- (AVMetadataObjectInternal)init
{
  v7.receiver = self;
  v7.super_class = AVMetadataObjectInternal;
  result = [(AVMetadataObjectInternal *)&v7 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    v4 = *MEMORY[0x1E6960C70];
    *&result->_time.value = *MEMORY[0x1E6960C70];
    *&result->_duration.value = v4;
    v5 = *(MEMORY[0x1E695F058] + 16);
    result->_bounds.origin = *MEMORY[0x1E695F058];
    v6 = *(v3 + 16);
    result->_time.epoch = v6;
    result->_duration.epoch = v6;
    result->_bounds.size = v5;
    result->_groupID = -1;
    result->_objectID = -1;
    result->_syntheticFocusMode = 0;
    result->_detectionSource = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataObjectInternal;
  [(AVMetadataObjectInternal *)&v3 dealloc];
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end