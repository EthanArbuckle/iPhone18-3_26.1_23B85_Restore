@interface SHMusicalFeaturesConfiguration
- (SHMusicalFeaturesConfiguration)initWithCoder:(id)a3;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 crepeModelURL:(id)a4 minimumDuration:(double)a5;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 crepeModelURL:(id)a4 minimumDuration:(double)a5 error:(id *)p_isa;
- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 minimumDuration:(double)a4 error:(id *)p_isa;
- (SHMusicalFeaturesConfiguration)initWithCrepeModelURL:(id)a3 minimumDuration:(double)a4 error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMusicalFeaturesConfiguration

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 minimumDuration:(double)a4 error:(id *)p_isa
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 isFileURL])
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:v8 crepeModelURL:0 minimumDuration:a4];
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

- (SHMusicalFeaturesConfiguration)initWithCrepeModelURL:(id)a3 minimumDuration:(double)a4 error:(id *)p_isa
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 isFileURL])
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:0 crepeModelURL:v8 minimumDuration:a4];
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

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 crepeModelURL:(id)a4 minimumDuration:(double)a5 error:(id *)p_isa
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v10 isFileURL] && (objc_msgSend(v11, "isFileURL") & 1) != 0)
  {
    self = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:v10 crepeModelURL:v11 minimumDuration:a5];
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

- (SHMusicalFeaturesConfiguration)initWithCremaModelURL:(id)a3 crepeModelURL:(id)a4 minimumDuration:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SHMusicalFeaturesConfiguration;
  v11 = [(SHMusicalFeaturesConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cremaModelURL, a3);
    objc_storeStrong(&v12->_crepeModelURL, a4);
    v12->_minimumDuration = a5;
  }

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  v6 = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  v8 = [v3 stringWithFormat:@"<%@: %p>\n\tCREMA URL: %@\n\tCREPE URL: %@\n\tMinimum duration: %f", v4, self, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMusicalFeaturesConfiguration alloc];
  v6 = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  v9 = [v8 copyWithZone:a3];
  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  v10 = [(SHMusicalFeaturesConfiguration *)v5 initWithCremaModelURL:v7 crepeModelURL:v9 minimumDuration:?];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SHMusicalFeaturesConfiguration *)self cremaModelURL];
  [v6 encodeObject:v4 forKey:@"SHMusicalFeaturesConfigurationCremaModelURLKey"];

  v5 = [(SHMusicalFeaturesConfiguration *)self crepeModelURL];
  [v6 encodeObject:v5 forKey:@"SHMusicalFeaturesConfigurationCrepeModelURLKey"];

  [(SHMusicalFeaturesConfiguration *)self minimumDuration];
  [v6 encodeDouble:@"SHMusicalFeaturesConfigurationMinimumDurationKey" forKey:?];
}

- (SHMusicalFeaturesConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMusicalFeaturesConfigurationCremaModelURLKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMusicalFeaturesConfigurationCrepeModelURLKey"];
  [v4 decodeDoubleForKey:@"SHMusicalFeaturesConfigurationMinimumDurationKey"];
  v8 = v7;

  v9 = [(SHMusicalFeaturesConfiguration *)self initWithCremaModelURL:v5 crepeModelURL:v6 minimumDuration:v8];
  return v9;
}

@end