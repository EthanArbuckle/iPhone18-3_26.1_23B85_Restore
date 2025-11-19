@interface _ADChunkInfo
- (_ADChunkInfo)initWithDictionary:(id)a3;
- (id)anchorWithKey:(id)a3 appID:(id)a4 syncType:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation _ADChunkInfo

- (id)anchorWithKey:(id)a3 appID:(id)a4 syncType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(SASyncAnchor);
  [v11 setKey:v10];

  [v11 setValidity:self->_validity];
  [v11 setGeneration:self->_postGen];
  if (v8 | v9)
  {
    v12 = objc_alloc_init(SASyncAppMetaData);
    if (v9)
    {
      v16 = v9;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      [v12 setSyncSlots:v13];
    }

    if (v8)
    {
      v14 = objc_alloc_init(SASyncAppIdentifyingInfo);
      [v14 setBundleId:v8];
      [v12 setAppIdentifyingInfo:v14];
    }

    [v11 setAppMetaData:v12];
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v4 = v3;
  postGen = self->_postGen;
  if (postGen)
  {
    [v3 setObject:postGen forKey:SASyncAnchorGenerationPListKey];
  }

  validity = self->_validity;
  if (validity)
  {
    [v4 setObject:validity forKey:SASyncAnchorValidityPListKey];
  }

  return v4;
}

- (_ADChunkInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _ADChunkInfo;
  v5 = [(_ADChunkInfo *)&v13 init];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v6 = SASyncAnchorGenerationPListKey;
      v7 = [v4 objectForKey:SASyncAnchorGenerationPListKey];
      if (objc_opt_isKindOfClass())
      {
        [(_ADChunkInfo *)v5 setPostGen:v7];
      }

      else if (v7)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[_ADChunkInfo initWithDictionary:]";
          v16 = 2112;
          v17 = v6;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Non-string object under key %@", buf, 0x16u);
        }
      }

      v10 = [v4 objectForKey:SASyncAnchorValidityPListKey];

      if (objc_opt_isKindOfClass())
      {
        [(_ADChunkInfo *)v5 setValidity:v10];
      }

      else if (v10)
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[_ADChunkInfo initWithDictionary:]";
          v16 = 2112;
          v17 = v6;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Non-string object under key %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[_ADChunkInfo initWithDictionary:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Invalid parameter is not a dictionary!", buf, 0xCu);
      }
    }
  }

  return v5;
}

@end