@interface AXQuickSettingsData
- (AXQuickSettingsData)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXQuickSettingsData

- (AXQuickSettingsData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXQuickSettingsData;
  v5 = [(AXQuickSettingsData *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frontmostAppIdentifier"];
    [(AXQuickSettingsData *)v5 setFrontmostAppIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webAreaURL"];
    [(AXQuickSettingsData *)v5 setWebAreaURL:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXQuickSettingsData *)self frontmostAppIdentifier];
  [v4 encodeObject:v5 forKey:@"frontmostAppIdentifier"];

  v6 = [(AXQuickSettingsData *)self webAreaURL];
  [v4 encodeObject:v6 forKey:@"webAreaURL"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXQuickSettingsData;
  v4 = [(AXQuickSettingsData *)&v8 description];
  v5 = [(AXQuickSettingsData *)self frontmostAppIdentifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end