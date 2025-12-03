@interface AXAppSceneRepresentation
- (AXAppSceneRepresentation)initWithBundleIdentifier:(id)identifier fbSceneIdentifier:(id)sceneIdentifier;
- (AXAppSceneRepresentation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXAppSceneRepresentation

- (AXAppSceneRepresentation)initWithBundleIdentifier:(id)identifier fbSceneIdentifier:(id)sceneIdentifier
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  v12.receiver = self;
  v12.super_class = AXAppSceneRepresentation;
  v9 = [(AXAppSceneRepresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, identifier);
    objc_storeStrong(&v10->_fbSceneIdentifier, sceneIdentifier);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(AXAppSceneRepresentation *)self bundleIdentifier];
  fbSceneIdentifier = [(AXAppSceneRepresentation *)self fbSceneIdentifier];
  v6 = [v3 stringWithFormat:@"AXAppScene<%p>: bundleIdentifier:%@ fbSceneIdentifier:%@", self, bundleIdentifier, fbSceneIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(AXAppSceneRepresentation *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  fbSceneIdentifier = [(AXAppSceneRepresentation *)self fbSceneIdentifier];
  [coderCopy encodeObject:fbSceneIdentifier forKey:@"fbSceneIdentifier"];
}

- (AXAppSceneRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fbSceneIdentifier"];

  v7 = [(AXAppSceneRepresentation *)self initWithBundleIdentifier:v5 fbSceneIdentifier:v6];
  return v7;
}

@end