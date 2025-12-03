@interface WKSnapshotConfiguration
- (CGRect)rect;
- (WKSnapshotConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation WKSnapshotConfiguration

- (WKSnapshotConfiguration)init
{
  v5.receiver = self;
  v5.super_class = WKSnapshotConfiguration;
  v2 = [(WKSnapshotConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WKSnapshotConfiguration *)v2 setRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(WKSnapshotConfiguration *)v3 setAfterScreenUpdates:1];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WKSnapshotConfiguration;
  [(WKSnapshotConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(WKSnapshotConfiguration *)self rect];
  [v4 setRect:?];
  [v4 setSnapshotWidth:{-[WKSnapshotConfiguration snapshotWidth](self, "snapshotWidth")}];
  [v4 setAfterScreenUpdates:{-[WKSnapshotConfiguration afterScreenUpdates](self, "afterScreenUpdates")}];
  [v4 _setUsesTransparentBackground:{-[WKSnapshotConfiguration _usesTransparentBackground](self, "_usesTransparentBackground")}];
  return v4;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end