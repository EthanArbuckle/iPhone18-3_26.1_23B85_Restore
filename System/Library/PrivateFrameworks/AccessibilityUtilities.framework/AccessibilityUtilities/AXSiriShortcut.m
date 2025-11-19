@interface AXSiriShortcut
- (AXSiriShortcut)initWithAccessibilityWorkflow:(id)a3;
- (AXSiriShortcut)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSiriShortcut

- (AXSiriShortcut)initWithAccessibilityWorkflow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AXSiriShortcut;
  v5 = [(AXSiriShortcut *)&v14 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 name];
    shortcutName = v5->_shortcutName;
    v5->_shortcutName = v8;

    v10 = [v4 associatedAppBundleIdentifier];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v5->_glyphCharacter = [v4 glyphCharacter];
    v12 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXSiriShortcut *)self identifier];
  v5 = [(AXSiriShortcut *)self shortcutName];
  v6 = [(AXSiriShortcut *)self associatedAppBundleIdentifier];
  v7 = [v3 stringWithFormat:@"AXSiriShortcut<%p>. ID: '%@' name: '%@' bundleID: '%@' ", self, v4, v5, v6];

  return v7;
}

- (AXSiriShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AXSiriShortcut;
  v5 = [(AXSiriShortcut *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutName"];
    shortcutName = v5->_shortcutName;
    v5->_shortcutName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v5->_glyphCharacter = [v4 decodeIntForKey:@"glyphCharacter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_shortcutName forKey:@"shortcutName"];
  [v5 encodeObject:self->_associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];
  [v5 encodeInt:self->_glyphCharacter forKey:@"glyphCharacter"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AXSiriShortcut);
  v5 = [(AXSiriShortcut *)self identifier];
  [(AXSiriShortcut *)v4 setIdentifier:v5];

  v6 = [(AXSiriShortcut *)self shortcutName];
  [(AXSiriShortcut *)v4 setShortcutName:v6];

  v7 = [(AXSiriShortcut *)self associatedAppBundleIdentifier];
  [(AXSiriShortcut *)v4 setAssociatedAppBundleIdentifier:v7];

  [(AXSiriShortcut *)v4 setGlyphCharacter:[(AXSiriShortcut *)self glyphCharacter]];
  return v4;
}

@end