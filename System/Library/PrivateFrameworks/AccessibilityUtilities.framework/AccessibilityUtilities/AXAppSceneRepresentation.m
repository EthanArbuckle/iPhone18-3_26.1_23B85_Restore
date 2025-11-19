@interface AXAppSceneRepresentation
- (AXAppSceneRepresentation)initWithBundleIdentifier:(id)a3 fbSceneIdentifier:(id)a4;
- (AXAppSceneRepresentation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXAppSceneRepresentation

- (AXAppSceneRepresentation)initWithBundleIdentifier:(id)a3 fbSceneIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXAppSceneRepresentation;
  v9 = [(AXAppSceneRepresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    objc_storeStrong(&v10->_fbSceneIdentifier, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXAppSceneRepresentation *)self bundleIdentifier];
  v5 = [(AXAppSceneRepresentation *)self fbSceneIdentifier];
  v6 = [v3 stringWithFormat:@"AXAppScene<%p>: bundleIdentifier:%@ fbSceneIdentifier:%@", self, v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXAppSceneRepresentation *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(AXAppSceneRepresentation *)self fbSceneIdentifier];
  [v4 encodeObject:v6 forKey:@"fbSceneIdentifier"];
}

- (AXAppSceneRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fbSceneIdentifier"];

  v7 = [(AXAppSceneRepresentation *)self initWithBundleIdentifier:v5 fbSceneIdentifier:v6];
  return v7;
}

@end