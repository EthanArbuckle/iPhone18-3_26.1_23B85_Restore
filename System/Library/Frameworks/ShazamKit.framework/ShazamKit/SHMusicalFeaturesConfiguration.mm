@interface SHMusicalFeaturesConfiguration
- (SHMusicalFeaturesConfiguration)initWithCoder:(id)coder;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l crepeModelURL:(id)rL minimumDuration:(double)duration;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l crepeModelURL:(id)rL minimumDuration:(double)duration error:(id *)p_isa;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l minimumDuration:(double)duration error:(id *)p_isa;
- (SHMusicalFeaturesConfiguration)initWithCrepeModelURL:(id)l minimumDuration:(double)duration error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMusicalFeaturesConfiguration

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l minimumDuration:(double)duration error:(id *)p_isa
{
  v15[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:lCopy crepeModelURL:0 minimumDuration:duration];
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA050];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Only file URLs are supported for model URLs.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *p_isa = [v9 errorWithDomain:v10 code:262 userInfo:v11];

    p_isa = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (SHMusicalFeaturesConfiguration)initWithCrepeModelURL:(id)l minimumDuration:(double)duration error:(id *)p_isa
{
  v15[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:0 crepeModelURL:lCopy minimumDuration:duration];
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA050];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Only file URLs are supported for model URLs.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *p_isa = [v9 errorWithDomain:v10 code:262 userInfo:v11];

    p_isa = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l crepeModelURL:(id)rL minimumDuration:(double)duration error:(id *)p_isa
{
  v18[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isFileURL] && (objc_msgSend(rLCopy, "isFileURL") & 1) != 0)
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:lCopy crepeModelURL:rLCopy minimumDuration:duration];
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA050];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Only file URLs are supported for model URLs.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *p_isa = [v12 errorWithDomain:v13 code:262 userInfo:v14];

    p_isa = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)l crepeModelURL:(id)rL minimumDuration:(double)duration
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = SHMusicalFeaturesConfiguration;
  v11 = [(SHMusicalFeaturesConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cremaModelURL, l);
    objc_storeStrong(&v12->_crepeModelURL, rL);
    v12->_minimumDuration = duration;
  }

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  cremaModelURL = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  crepeModelURL = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  v8 = [v3 stringWithFormat:@"<%@: %p>\n\tCREMA URL: %@\n\tCREPE URL: %@\n\tMinimum duration: %f", v4, self, cremaModelURL, crepeModelURL, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMusicalFeaturesConfiguration alloc];
  cremaModelURL = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  v7 = [cremaModelURL copyWithZone:zone];
  crepeModelURL = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  v9 = [crepeModelURL copyWithZone:zone];
  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  v10 = [(SHMusicalFeaturesConfiguration *)v5 initWithCremaModelURL:v7 crepeModelURL:v9 minimumDuration:?];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cremaModelURL = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  [coderCopy encodeObject:cremaModelURL forKey:@"SHMusicalFeaturesConfigurationCremaModelURLKey"];

  crepeModelURL = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  [coderCopy encodeObject:crepeModelURL forKey:@"SHMusicalFeaturesConfigurationCrepeModelURLKey"];

  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  [coderCopy encodeDouble:@"SHMusicalFeaturesConfigurationMinimumDurationKey" forKey:?];
}

- (SHMusicalFeaturesConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMusicalFeaturesConfigurationCremaModelURLKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMusicalFeaturesConfigurationCrepeModelURLKey"];
  [coderCopy decodeDoubleForKey:@"SHMusicalFeaturesConfigurationMinimumDurationKey"];
  v8 = v7;

  v9 = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:v5 crepeModelURL:v6 minimumDuration:v8];
  return v9;
}

@end