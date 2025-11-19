@interface PHUnauthorizedFetchResult
- (BOOL)isEqual:(id)a3;
- (PHUnauthorizedFetchResult)fetchResultWithChangeHandlingValue:(id)a3;
- (PHUnauthorizedFetchResult)initWithOptions:(id)a3 status:(int64_t)a4 fetchBlock:(id)a5;
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

- (PHUnauthorizedFetchResult)fetchResultWithChangeHandlingValue:(id)a3
{
  if ([PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2]&& (fetchBlock = self->_fetchBlock) != 0)
  {
    v5 = fetchBlock[2](fetchBlock, self->_options);
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)calculateMediaTypeCounts
{
  v2 = [[PHFetchResultMediaTypeCounts alloc] initWithPhotosCount:0 videosCount:0 audiosCount:0];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(PHUnauthorizedFetchResult *)self identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHUnauthorizedFetchResult;
  if ([(PHUnauthorizedFetchResult *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHUnauthorizedFetchResult *)self identifier];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 identifier];
      v5 = [v6 isEqualToString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PHUnauthorizedFetchResult)initWithOptions:(id)a3 status:(int64_t)a4 fetchBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = PHUnauthorizedFetchResult;
  v10 = [(PHFetchResult *)&v28 init];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E695DEC8] array];
  objects = v10->_objects;
  v10->_objects = v11;

  v13 = [MEMORY[0x1E695DFB8] orderedSet];
  objectIDs = v10->_objectIDs;
  v10->_objectIDs = v13;

  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  identifier = v10->_identifier;
  v10->_identifier = v16;

  v18 = [v8 copy];
  options = v10->_options;
  v10->_options = v18;

  v20 = 0;
  if (a4 > 2)
  {
    if ((a4 - 3) < 2)
    {
      v20 = 1;
      v21 = -1;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a4)
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
    v25 = [v9 copy];
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