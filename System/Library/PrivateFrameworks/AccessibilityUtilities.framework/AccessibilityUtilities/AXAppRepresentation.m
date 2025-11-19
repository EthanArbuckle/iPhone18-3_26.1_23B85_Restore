@interface AXAppRepresentation
+ (id)appWithPID:(int)a3 bundleID:(id)a4;
- (AXAppRepresentation)init;
- (AXAppRepresentation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXAppRepresentation

+ (id)appWithPID:(int)a3 bundleID:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_alloc_init(AXAppRepresentation);
  [(AXAppRepresentation *)v6 setPid:v4];
  [(AXAppRepresentation *)v6 setBundleIdentifier:v5];

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
  v5 = [(AXAppRepresentation *)self bundleIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXAppRepresentation isLayoutPrimary](self, "isLayoutPrimary")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXAppRepresentation isLayoutFullscreenModal](self, "isLayoutFullscreenModal")}];
  v8 = [v3 stringWithFormat:@"AXApp<%p>: PID:%@ BundleID:%@ Primary:%@ FullScrModal:%@", self, v4, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInt:{-[AXAppRepresentation pid](self, "pid")}];
  [v5 encodeObject:v6 forKey:@"pid"];

  v7 = [(AXAppRepresentation *)self bundleIdentifier];
  [v5 encodeObject:v7 forKey:@"bundleID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXAppRepresentation layoutRole](self, "layoutRole")}];
  [v5 encodeObject:v8 forKey:@"layoutRole"];
}

- (AXAppRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AXAppRepresentation;
  v5 = [(AXAppRepresentation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(AXAppRepresentation *)v5 _commonInit];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    -[AXAppRepresentation setPid:](v6, "setPid:", [v7 intValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(AXAppRepresentation *)v6 setBundleIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutRole"];
    -[AXAppRepresentation setLayoutRole:](v6, "setLayoutRole:", [v9 unsignedIntegerValue]);
  }

  return v6;
}

@end