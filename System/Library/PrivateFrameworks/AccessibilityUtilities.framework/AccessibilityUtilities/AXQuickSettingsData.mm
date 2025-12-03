@interface AXQuickSettingsData
- (AXQuickSettingsData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXQuickSettingsData

- (AXQuickSettingsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXQuickSettingsData;
  v5 = [(AXQuickSettingsData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frontmostAppIdentifier"];
    [(AXQuickSettingsData *)v5 setFrontmostAppIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webAreaURL"];
    [(AXQuickSettingsData *)v5 setWebAreaURL:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  frontmostAppIdentifier = [(AXQuickSettingsData *)self frontmostAppIdentifier];
  [coderCopy encodeObject:frontmostAppIdentifier forKey:@"frontmostAppIdentifier"];

  webAreaURL = [(AXQuickSettingsData *)self webAreaURL];
  [coderCopy encodeObject:webAreaURL forKey:@"webAreaURL"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXQuickSettingsData;
  v4 = [(AXQuickSettingsData *)&v8 description];
  frontmostAppIdentifier = [(AXQuickSettingsData *)self frontmostAppIdentifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, frontmostAppIdentifier];

  return v6;
}

@end