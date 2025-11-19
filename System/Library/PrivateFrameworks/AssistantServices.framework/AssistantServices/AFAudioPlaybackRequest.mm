@interface AFAudioPlaybackRequest
+ (id)newWithBuilder:(id)a3;
- (AFAudioPlaybackRequest)initWithBuilder:(id)a3;
- (AFAudioPlaybackRequest)initWithCoder:(id)a3;
- (AFAudioPlaybackRequest)initWithItemURL:(id)a3 itemData:(id)a4 numberOfLoops:(int64_t)a5 volume:(float)a6 fadeInDuration:(double)a7 fadeOutDuration:(double)a8 userInfo:(id)a9 hapticLibraryKey:(id)a10 UUID:(id)a11;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioPlaybackRequest

- (void)encodeWithCoder:(id)a3
{
  itemURL = self->_itemURL;
  v10 = a3;
  [v10 encodeObject:itemURL forKey:@"AFAudioPlaybackRequest::itemURL"];
  [v10 encodeObject:self->_itemData forKey:@"AFAudioPlaybackRequest::itemData"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfLoops];
  [v10 encodeObject:v5 forKey:@"AFAudioPlaybackRequest::numberOfLoops"];

  *&v6 = self->_volume;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v10 encodeObject:v7 forKey:@"AFAudioPlaybackRequest::volume"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fadeInDuration];
  [v10 encodeObject:v8 forKey:@"AFAudioPlaybackRequest::fadeInDuration"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fadeOutDuration];
  [v10 encodeObject:v9 forKey:@"AFAudioPlaybackRequest::fadeOutDuration"];

  [v10 encodeObject:self->_userInfo forKey:@"AFAudioPlaybackRequest::userInfo"];
  [v10 encodeObject:self->_hapticLibraryKey forKey:@"AFAudioPlaybackRequest::hapticLibraryKey"];
  [v10 encodeObject:self->_UUID forKey:@"AFAudioPlaybackRequest::UUID"];
}

- (AFAudioPlaybackRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::itemURL"];
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::itemData"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::numberOfLoops"];
  v31 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::volume"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::fadeInDuration"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::fadeOutDuration"];
  [v11 doubleValue];
  v13 = v12;

  v30 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v30 setWithObjects:{v29, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  v23 = [v3 decodeObjectOfClasses:v22 forKey:@"AFAudioPlaybackRequest::userInfo"];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::hapticLibraryKey"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioPlaybackRequest::UUID"];

  LODWORD(v26) = v7;
  v27 = [(AFAudioPlaybackRequest *)self initWithItemURL:v33 itemData:v32 numberOfLoops:v31 volume:v23 fadeInDuration:v24 fadeOutDuration:v25 userInfo:v26 hapticLibraryKey:v10 UUID:v13];

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      numberOfLoops = self->_numberOfLoops;
      if (numberOfLoops == [(AFAudioPlaybackRequest *)v5 numberOfLoops]&& (volume = self->_volume, [(AFAudioPlaybackRequest *)v5 volume], volume == v8) && (fadeInDuration = self->_fadeInDuration, [(AFAudioPlaybackRequest *)v5 fadeInDuration], fadeInDuration == v10) && (fadeOutDuration = self->_fadeOutDuration, [(AFAudioPlaybackRequest *)v5 fadeOutDuration], fadeOutDuration == v12))
      {
        v15 = [(AFAudioPlaybackRequest *)v5 itemURL];
        itemURL = self->_itemURL;
        if (itemURL == v15 || [(NSURL *)itemURL isEqual:v15])
        {
          v17 = [(AFAudioPlaybackRequest *)v5 itemData];
          itemData = self->_itemData;
          if (itemData == v17 || [(NSData *)itemData isEqual:v17])
          {
            v19 = [(AFAudioPlaybackRequest *)v5 userInfo];
            userInfo = self->_userInfo;
            if (userInfo == v19 || [(NSDictionary *)userInfo isEqual:v19])
            {
              v21 = [(AFAudioPlaybackRequest *)v5 hapticLibraryKey];
              hapticLibraryKey = self->_hapticLibraryKey;
              if (hapticLibraryKey == v21 || [(NSString *)hapticLibraryKey isEqual:v21])
              {
                v23 = [(AFAudioPlaybackRequest *)v5 UUID];
                UUID = self->_UUID;
                v13 = UUID == v23 || [(NSString *)UUID isEqual:v23];
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_itemURL hash];
  v4 = [(NSData *)self->_itemData hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfLoops];
  v6 = v4 ^ [v5 hash];
  *&v7 = self->_volume;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fadeInDuration];
  v11 = v6 ^ v9 ^ [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fadeOutDuration];
  v13 = [v12 hash];
  v14 = v13 ^ [(NSDictionary *)self->_userInfo hash];
  v15 = v11 ^ v14 ^ [(NSString *)self->_hapticLibraryKey hash];
  v16 = [(NSString *)self->_UUID hash];

  return v15 ^ v16;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFAudioPlaybackRequest;
  v5 = [(AFAudioPlaybackRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {itemURL = %@, itemData = (%llu bytes), numberOfLoops = %lld, volume = %f, fadeInDuration = %f, fadeOutDuration = %f, userInfo = %@, hapticLibraryKey = %@, UUID = %@}", v5, self->_itemURL, -[NSData length](self->_itemData, "length"), self->_numberOfLoops, self->_volume, *&self->_fadeInDuration, *&self->_fadeOutDuration, self->_userInfo, self->_hapticLibraryKey, self->_UUID];

  return v6;
}

- (AFAudioPlaybackRequest)initWithItemURL:(id)a3 itemData:(id)a4 numberOfLoops:(int64_t)a5 volume:(float)a6 fadeInDuration:(double)a7 fadeOutDuration:(double)a8 userInfo:(id)a9 hapticLibraryKey:(id)a10 UUID:(id)a11
{
  v20 = a3;
  v21 = a4;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __134__AFAudioPlaybackRequest_initWithItemURL_itemData_numberOfLoops_volume_fadeInDuration_fadeOutDuration_userInfo_hapticLibraryKey_UUID___block_invoke;
  v32[3] = &unk_1E73478E0;
  v33 = v20;
  v34 = v21;
  v41 = a6;
  v39 = a7;
  v40 = a8;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = a5;
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = [(AFAudioPlaybackRequest *)self initWithBuilder:v32];

  return v30;
}

void __134__AFAudioPlaybackRequest_initWithItemURL_itemData_numberOfLoops_volume_fadeInDuration_fadeOutDuration_userInfo_hapticLibraryKey_UUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setItemURL:v3];
  [v5 setItemData:*(a1 + 40)];
  [v5 setNumberOfLoops:*(a1 + 72)];
  LODWORD(v4) = *(a1 + 96);
  [v5 setVolume:v4];
  [v5 setFadeInDuration:*(a1 + 80)];
  [v5 setFadeOutDuration:*(a1 + 88)];
  [v5 setUserInfo:*(a1 + 48)];
  [v5 setHapticLibraryKey:*(a1 + 56)];
  [v5 setUUID:*(a1 + 64)];
}

- (AFAudioPlaybackRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AFAudioPlaybackRequest;
  v5 = [(AFAudioPlaybackRequest *)&v27 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAudioPlaybackRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAudioPlaybackRequestMutation *)v7 isDirty])
    {
      v8 = [(_AFAudioPlaybackRequestMutation *)v7 getItemURL];
      v9 = [v8 copy];
      itemURL = v6->_itemURL;
      v6->_itemURL = v9;

      v11 = [(_AFAudioPlaybackRequestMutation *)v7 getItemData];
      v12 = [v11 copy];
      itemData = v6->_itemData;
      v6->_itemData = v12;

      v6->_numberOfLoops = [(_AFAudioPlaybackRequestMutation *)v7 getNumberOfLoops];
      [(_AFAudioPlaybackRequestMutation *)v7 getVolume];
      v6->_volume = v14;
      [(_AFAudioPlaybackRequestMutation *)v7 getFadeInDuration];
      v6->_fadeInDuration = v15;
      [(_AFAudioPlaybackRequestMutation *)v7 getFadeOutDuration];
      v6->_fadeOutDuration = v16;
      v17 = [(_AFAudioPlaybackRequestMutation *)v7 getUserInfo];
      v18 = [v17 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v18;

      v20 = [(_AFAudioPlaybackRequestMutation *)v7 getHapticLibraryKey];
      v21 = [v20 copy];
      hapticLibraryKey = v6->_hapticLibraryKey;
      v6->_hapticLibraryKey = v21;

      v23 = [(_AFAudioPlaybackRequestMutation *)v7 getUUID];
      v24 = [v23 copy];
      UUID = v6->_UUID;
      v6->_UUID = v24;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFAudioPlaybackRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAudioPlaybackRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioPlaybackRequest);
      v7 = [(_AFAudioPlaybackRequestMutation *)v5 getItemURL];
      v8 = [v7 copy];
      itemURL = v6->_itemURL;
      v6->_itemURL = v8;

      v10 = [(_AFAudioPlaybackRequestMutation *)v5 getItemData];
      v11 = [v10 copy];
      itemData = v6->_itemData;
      v6->_itemData = v11;

      v6->_numberOfLoops = [(_AFAudioPlaybackRequestMutation *)v5 getNumberOfLoops];
      [(_AFAudioPlaybackRequestMutation *)v5 getVolume];
      v6->_volume = v13;
      [(_AFAudioPlaybackRequestMutation *)v5 getFadeInDuration];
      v6->_fadeInDuration = v14;
      [(_AFAudioPlaybackRequestMutation *)v5 getFadeOutDuration];
      v6->_fadeOutDuration = v15;
      v16 = [(_AFAudioPlaybackRequestMutation *)v5 getUserInfo];
      v17 = [v16 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v17;

      v19 = [(_AFAudioPlaybackRequestMutation *)v5 getHapticLibraryKey];
      v20 = [v19 copy];
      hapticLibraryKey = v6->_hapticLibraryKey;
      v6->_hapticLibraryKey = v20;

      v22 = [(_AFAudioPlaybackRequestMutation *)v5 getUUID];
      v23 = [v22 copy];
      UUID = v6->_UUID;
      v6->_UUID = v23;
    }

    else
    {
      v6 = [(AFAudioPlaybackRequest *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioPlaybackRequest *)self copy];
  }

  return v6;
}

@end