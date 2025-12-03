@interface AXAppRepresentation
+ (id)appWithPID:(int)d bundleID:(id)iD;
- (AXAppRepresentation)init;
- (AXAppRepresentation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXAppRepresentation

+ (id)appWithPID:(int)d bundleID:(id)iD
{
  v4 = *&d;
  iDCopy = iD;
  v6 = objc_alloc_init(AXAppRepresentation);
  [(AXAppRepresentation *)v6 setPid:v4];
  [(AXAppRepresentation *)v6 setBundleIdentifier:iDCopy];

  return v6;
}

- (AXAppRepresentation)init
{
  v5.receiver = self;
  v5.super_class = AXAppRepresentation;
  v2 = [(AXAppRepresentation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAppRepresentation *)v2 _commonInit];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[AXAppRepresentation pid](self, "pid")}];
  bundleIdentifier = [(AXAppRepresentation *)self bundleIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXAppRepresentation isLayoutPrimary](self, "isLayoutPrimary")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXAppRepresentation isLayoutFullscreenModal](self, "isLayoutFullscreenModal")}];
  v8 = [v3 stringWithFormat:@"AXApp<%p>: PID:%@ BundleID:%@ Primary:%@ FullScrModal:%@", self, v4, bundleIdentifier, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInt:{-[AXAppRepresentation pid](self, "pid")}];
  [coderCopy encodeObject:v6 forKey:@"pid"];

  bundleIdentifier = [(AXAppRepresentation *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXAppRepresentation layoutRole](self, "layoutRole")}];
  [coderCopy encodeObject:v8 forKey:@"layoutRole"];
}

- (AXAppRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AXAppRepresentation;
  v5 = [(AXAppRepresentation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(AXAppRepresentation *)v5 _commonInit];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    -[AXAppRepresentation setPid:](v6, "setPid:", [v7 intValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(AXAppRepresentation *)v6 setBundleIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutRole"];
    -[AXAppRepresentation setLayoutRole:](v6, "setLayoutRole:", [v9 unsignedIntegerValue]);
  }

  return v6;
}

@end