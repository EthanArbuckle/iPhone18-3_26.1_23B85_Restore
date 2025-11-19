@interface CNAvatarPosterCarouselLikenessFingerprint
+ (id)archiveWithFingerprint:(id)a3;
+ (id)fingerprintForPosterConfiguration:(id)a3;
+ (id)fingerprintForPosterConfiguration:(id)a3 withConfigurationData:(id)a4;
+ (id)fingerprintForPosterConfiguration:(id)a3 withUUID:(id)a4;
+ (id)fingerprintFromArchive:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithAvatarVisualFingerprint:(id)a3 sourceType:(int64_t)a4;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithCoder:(id)a3;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithImpl:(id)a3;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterConfigurationData:(id)a3;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterUUID:(id)a3;
@end

@implementation CNAvatarPosterCarouselLikenessFingerprint

- (CNAvatarPosterCarouselLikenessFingerprint)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"impl"];

  v10 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(_CNAvatarPosterCarouselLikenessFingerprintImpl *)self->_impl isEqual:v7[1]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterUUID:(id)a3
{
  v4 = a3;
  v5 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl alloc] initWithPosterUUID:v4];

  v6 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v5];
  return v6;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithAvatarVisualFingerprint:(id)a3 sourceType:(int64_t)a4
{
  v6 = a3;
  v7 = [[_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl alloc] initWithVisualFingerprint:v6 sourceType:a4];

  v8 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v7];
  return v8;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterConfigurationData:(id)a3
{
  v4 = a3;
  v5 = [CNPRUISPosterTitleStyleAttributes attributesFromData:v4 error:0];
  v6 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl alloc] initWithPosterConfigurationData:v4 titleStyleAttributes:v5];

  v7 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v6];
  return v7;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithImpl:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAvatarPosterCarouselLikenessFingerprint;
  v6 = [(CNAvatarPosterCarouselLikenessFingerprint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)archiveWithFingerprint:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"impl"];

  [v5 finishEncoding];
  v6 = [v5 encodedData];

  return v6;
}

+ (id)fingerprintFromArchive:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v8 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v8];

  [v5 setRequiresSecureCoding:1];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"impl"];
  [v5 finishDecoding];

  return v6;
}

+ (id)fingerprintForPosterConfiguration:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:v3];
  if ([v4 isEqualToString:*MEMORY[0x1E695CCE0]])
  {
    if (!+[_TtC10ContactsUI33CNMemojiPosterConfigurationReader canReadConfiguration])
    {
      goto LABEL_12;
    }

    v5 = [v3 loadUserInfoWithError:0];
    v6 = [_TtC10ContactsUI33CNMemojiPosterConfigurationReader memojiPosterConfigurationDataFromUserInfo:v5];
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (![v4 isEqualToString:*MEMORY[0x1E695CCE8]])
  {
    [v4 isEqualToString:*MEMORY[0x1E695CCF0]];
    goto LABEL_12;
  }

  if (!+[_TtC10ContactsUI35CNMonogramPosterConfigurationReader canReadConfiguration])
  {
    goto LABEL_12;
  }

  v5 = [v3 loadUserInfoWithError:0];
  v6 = [_TtC10ContactsUI35CNMonogramPosterConfigurationReader monogramPosterConfigurationDataFromUserInfo:v5];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6;
  v8 = [CNAvatarPosterCarouselLikenessFingerprint fingerprintForPosterConfiguration:v3 withConfigurationData:v6];

  if (v8)
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = 0;
      v10 = "Using visual fingerprint generated from poster configuration data";
      v11 = &v16;
LABEL_19:
      _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, v10, v11, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_12:
  v12 = [v3 serverUUID];
  v8 = [CNAvatarPosterCarouselLikenessFingerprint fingerprintForPosterConfiguration:v3 withUUID:v12];

  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = CNUILogPosters();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 0;
    v10 = "Using fingerprint generated from poster UUID";
    v11 = &v15;
    goto LABEL_19;
  }

LABEL_14:

LABEL_15:
  v13 = v8;

  return v13;
}

+ (id)fingerprintForPosterConfiguration:(id)a3 withUUID:(id)a4
{
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl fingerprintForPosterConfiguration:a3, a4];
  v5 = [[CNAvatarPosterCarouselLikenessFingerprint alloc] initWithImpl:v4];

  return v5;
}

+ (id)fingerprintForPosterConfiguration:(id)a3 withConfigurationData:(id)a4
{
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl fingerprintForPosterConfiguration:a3 withConfigurationData:a4];
  v5 = [[CNAvatarPosterCarouselLikenessFingerprint alloc] initWithImpl:v4];

  return v5;
}

@end