@interface CNAvatarPosterCarouselLikenessFingerprint
+ (id)archiveWithFingerprint:(id)fingerprint;
+ (id)fingerprintForPosterConfiguration:(id)configuration;
+ (id)fingerprintForPosterConfiguration:(id)configuration withConfigurationData:(id)data;
+ (id)fingerprintForPosterConfiguration:(id)configuration withUUID:(id)d;
+ (id)fingerprintFromArchive:(id)archive;
- (BOOL)isEqual:(id)equal;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithAvatarVisualFingerprint:(id)fingerprint sourceType:(int64_t)type;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithCoder:(id)coder;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithImpl:(id)impl;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterConfigurationData:(id)data;
- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterUUID:(id)d;
@end

@implementation CNAvatarPosterCarouselLikenessFingerprint

- (CNAvatarPosterCarouselLikenessFingerprint)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"impl"];

  v10 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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

- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterUUID:(id)d
{
  dCopy = d;
  v5 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl alloc] initWithPosterUUID:dCopy];

  v6 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v5];
  return v6;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithAvatarVisualFingerprint:(id)fingerprint sourceType:(int64_t)type
{
  fingerprintCopy = fingerprint;
  v7 = [[_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl alloc] initWithVisualFingerprint:fingerprintCopy sourceType:type];

  v8 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v7];
  return v8;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithPosterConfigurationData:(id)data
{
  dataCopy = data;
  v5 = [CNPRUISPosterTitleStyleAttributes attributesFromData:dataCopy error:0];
  v6 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl alloc] initWithPosterConfigurationData:dataCopy titleStyleAttributes:v5];

  v7 = [(CNAvatarPosterCarouselLikenessFingerprint *)self initWithImpl:v6];
  return v7;
}

- (CNAvatarPosterCarouselLikenessFingerprint)initWithImpl:(id)impl
{
  implCopy = impl;
  v10.receiver = self;
  v10.super_class = CNAvatarPosterCarouselLikenessFingerprint;
  v6 = [(CNAvatarPosterCarouselLikenessFingerprint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
    v8 = v7;
  }

  return v7;
}

+ (id)archiveWithFingerprint:(id)fingerprint
{
  v3 = MEMORY[0x1E696ACC8];
  fingerprintCopy = fingerprint;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:fingerprintCopy forKey:@"impl"];

  [v5 finishEncoding];
  encodedData = [v5 encodedData];

  return encodedData;
}

+ (id)fingerprintFromArchive:(id)archive
{
  v3 = MEMORY[0x1E696ACD0];
  archiveCopy = archive;
  v8 = 0;
  v5 = [[v3 alloc] initForReadingFromData:archiveCopy error:&v8];

  [v5 setRequiresSecureCoding:1];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"impl"];
  [v5 finishDecoding];

  return v6;
}

+ (id)fingerprintForPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:configurationCopy];
  if ([v4 isEqualToString:*MEMORY[0x1E695CCE0]])
  {
    if (!+[_TtC10ContactsUI33CNMemojiPosterConfigurationReader canReadConfiguration])
    {
      goto LABEL_12;
    }

    v5 = [configurationCopy loadUserInfoWithError:0];
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

  v5 = [configurationCopy loadUserInfoWithError:0];
  v6 = [_TtC10ContactsUI35CNMonogramPosterConfigurationReader monogramPosterConfigurationDataFromUserInfo:v5];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6;
  v8 = [CNAvatarPosterCarouselLikenessFingerprint fingerprintForPosterConfiguration:configurationCopy withConfigurationData:v6];

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
  serverUUID = [configurationCopy serverUUID];
  v8 = [CNAvatarPosterCarouselLikenessFingerprint fingerprintForPosterConfiguration:configurationCopy withUUID:serverUUID];

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

+ (id)fingerprintForPosterConfiguration:(id)configuration withUUID:(id)d
{
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl fingerprintForPosterConfiguration:configuration, d];
  v5 = [[CNAvatarPosterCarouselLikenessFingerprint alloc] initWithImpl:v4];

  return v5;
}

+ (id)fingerprintForPosterConfiguration:(id)configuration withConfigurationData:(id)data
{
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl fingerprintForPosterConfiguration:configuration withConfigurationData:data];
  v5 = [[CNAvatarPosterCarouselLikenessFingerprint alloc] initWithImpl:v4];

  return v5;
}

@end