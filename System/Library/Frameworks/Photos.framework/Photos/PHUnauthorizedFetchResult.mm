@interface PHUnauthorizedFetchResult
- (BOOL)isEqual:(id)equal;
- (PHUnauthorizedFetchResult)fetchResultWithChangeHandlingValue:(id)value;
- (PHUnauthorizedFetchResult)initWithOptions:(id)options status:(int64_t)status fetchBlock:(id)block;
- (id)calculateMediaTypeCounts;
- (id)description;
- (unint64_t)hash;
@end

@implementation PHUnauthorizedFetchResult

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHUnauthorizedFetchResult;
  v2 = [(PHFetchResult *)&v4 description];

  return v2;
}

- (PHUnauthorizedFetchResult)fetchResultWithChangeHandlingValue:(id)value
{
  if ([PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2]&& (fetchBlock = self->_fetchBlock) != 0)
  {
    selfCopy = fetchBlock[2](fetchBlock, self->_options);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)calculateMediaTypeCounts
{
  v2 = [[PHFetchResultMediaTypeCounts alloc] initWithPhotosCount:0 videosCount:0 audiosCount:0];

  return v2;
}

- (unint64_t)hash
{
  identifier = [(PHUnauthorizedFetchResult *)self identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = [identifier hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHUnauthorizedFetchResult;
    v5 = [(PHUnauthorizedFetchResult *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PHUnauthorizedFetchResult;
  if ([(PHUnauthorizedFetchResult *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    identifier = [(PHUnauthorizedFetchResult *)self identifier];
    if (identifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier2 = [equalCopy identifier];
      v5 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PHUnauthorizedFetchResult)initWithOptions:(id)options status:(int64_t)status fetchBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = PHUnauthorizedFetchResult;
  v10 = [(PHFetchResult *)&v28 init];
  if (!v10)
  {
    goto LABEL_16;
  }

  array = [MEMORY[0x1E695DEC8] array];
  objects = v10->_objects;
  v10->_objects = array;

  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  objectIDs = v10->_objectIDs;
  v10->_objectIDs = orderedSet;

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  identifier = v10->_identifier;
  v10->_identifier = uUIDString;

  v18 = [optionsCopy copy];
  options = v10->_options;
  v10->_options = v18;

  v20 = 0;
  if (status > 2)
  {
    if ((status - 3) < 2)
    {
      v20 = 1;
      v21 = -1;
      goto LABEL_11;
    }
  }

  else
  {
    switch(status)
    {
      case 0:
        v20 = 1;
        v21 = 5102;
        goto LABEL_11;
      case 1:
        v20 = 0;
        v21 = 3310;
        goto LABEL_11;
      case 2:
        v21 = 3311;
LABEL_11:
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:v21 userInfo:0];
        fetchError = v10->super._fetchError;
        v10->super._fetchError = v22;

        break;
    }
  }

  v24 = v10->_options;
  if (!v24 || [(PHFetchOptions *)v24 wantsIncrementalChangeDetails])
  {
    v25 = [blockCopy copy];
    fetchBlock = v10->_fetchBlock;
    v10->_fetchBlock = v25;

    if (v20)
    {
      [(PHFetchResult *)v10 setRegisteredForChangeNotificationDeltas:1];
    }
  }

LABEL_16:

  return v10;
}

@end