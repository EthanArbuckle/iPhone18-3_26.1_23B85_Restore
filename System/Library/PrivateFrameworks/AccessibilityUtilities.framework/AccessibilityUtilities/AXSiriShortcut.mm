@interface AXSiriShortcut
- (AXSiriShortcut)initWithAccessibilityWorkflow:(id)workflow;
- (AXSiriShortcut)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSiriShortcut

- (AXSiriShortcut)initWithAccessibilityWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v14.receiver = self;
  v14.super_class = AXSiriShortcut;
  v5 = [(AXSiriShortcut *)&v14 init];
  if (v5)
  {
    identifier = [workflowCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    name = [workflowCopy name];
    shortcutName = v5->_shortcutName;
    v5->_shortcutName = name;

    associatedAppBundleIdentifier = [workflowCopy associatedAppBundleIdentifier];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = associatedAppBundleIdentifier;

    v5->_glyphCharacter = [workflowCopy glyphCharacter];
    v12 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(AXSiriShortcut *)self identifier];
  shortcutName = [(AXSiriShortcut *)self shortcutName];
  associatedAppBundleIdentifier = [(AXSiriShortcut *)self associatedAppBundleIdentifier];
  v7 = [v3 stringWithFormat:@"AXSiriShortcut<%p>. ID: '%@' name: '%@' bundleID: '%@' ", self, identifier, shortcutName, associatedAppBundleIdentifier];

  return v7;
}

- (AXSiriShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AXSiriShortcut;
  v5 = [(AXSiriShortcut *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutName"];
    shortcutName = v5->_shortcutName;
    v5->_shortcutName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v5->_glyphCharacter = [coderCopy decodeIntForKey:@"glyphCharacter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_shortcutName forKey:@"shortcutName"];
  [coderCopy encodeObject:self->_associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];
  [coderCopy encodeInt:self->_glyphCharacter forKey:@"glyphCharacter"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXSiriShortcut);
  identifier = [(AXSiriShortcut *)self identifier];
  [(AXSiriShortcut *)v4 setIdentifier:identifier];

  shortcutName = [(AXSiriShortcut *)self shortcutName];
  [(AXSiriShortcut *)v4 setShortcutName:shortcutName];

  associatedAppBundleIdentifier = [(AXSiriShortcut *)self associatedAppBundleIdentifier];
  [(AXSiriShortcut *)v4 setAssociatedAppBundleIdentifier:associatedAppBundleIdentifier];

  [(AXSiriShortcut *)v4 setGlyphCharacter:[(AXSiriShortcut *)self glyphCharacter]];
  return v4;
}

@end