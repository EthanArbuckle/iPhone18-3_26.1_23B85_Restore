@interface BTCloudSoundProfileRecord
+ (id)soundProfileRecordWithCustomData:(id)data;
+ (id)soundProfileRecordWithFileURL:(id)l;
- (BTCloudSoundProfileRecord)initWithCoder:(id)coder;
- (BTCloudSoundProfileRecord)initWithCustomData:(id)data;
- (BTCloudSoundProfileRecord)initWithFileURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTCloudSoundProfileRecord

- (BTCloudSoundProfileRecord)initWithCustomData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = BTCloudSoundProfileRecord;
  v5 = [(BTCloudSoundProfileRecord *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudSoundProfileRecord *)v5 setSoundProfileData:dataCopy];
  }

  return v6;
}

- (BTCloudSoundProfileRecord)initWithFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BTCloudSoundProfileRecord;
  v5 = [(BTCloudSoundProfileRecord *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudSoundProfileRecord *)v5 setSoundProfileFileURL:lCopy];
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:0];
    [(BTCloudSoundProfileRecord *)v6 setSoundProfileData:v7];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  soundProfileData = [(BTCloudSoundProfileRecord *)self soundProfileData];
  v5 = soundProfileData;
  if (soundProfileData)
  {
    v6 = [v3 stringWithFormat:@"BTCloudSoundProfileRecord: %@", soundProfileData];
  }

  else
  {
    soundProfileFileURL = [(BTCloudSoundProfileRecord *)self soundProfileFileURL];
    v6 = [v3 stringWithFormat:@"BTCloudSoundProfileRecord: %@", soundProfileFileURL];
  }

  return v6;
}

+ (id)soundProfileRecordWithCustomData:(id)data
{
  dataCopy = data;
  v4 = [[BTCloudSoundProfileRecord alloc] initWithCustomData:dataCopy];

  return v4;
}

+ (id)soundProfileRecordWithFileURL:(id)l
{
  lCopy = l;
  v4 = [[BTCloudSoundProfileRecord alloc] initWithFileURL:lCopy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  soundProfileData = [(BTCloudSoundProfileRecord *)self soundProfileData];
  v6 = NSStringFromSelector(sel_soundProfileData);
  [coderCopy encodeObject:soundProfileData forKey:v6];

  soundProfileFileURL = [(BTCloudSoundProfileRecord *)self soundProfileFileURL];
  v7 = NSStringFromSelector(sel_soundProfileFileURL);
  [coderCopy encodeObject:soundProfileFileURL forKey:v7];
}

- (BTCloudSoundProfileRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BTCloudSoundProfileRecord;
  v5 = [(BTCloudSoundProfileRecord *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_soundProfileData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(BTCloudSoundProfileRecord *)v5 setSoundProfileData:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_soundProfileFileURL);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudSoundProfileRecord *)v5 setSoundProfileFileURL:v11];
  }

  return v5;
}

@end