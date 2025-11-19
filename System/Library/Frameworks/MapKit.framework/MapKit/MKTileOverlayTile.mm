@interface MKTileOverlayTile
- ($4479F518DFD59EF68F6FA14DAF968345)path;
- ($9433BFB5400FDC760880D1BFD6845728)frame;
- (id)description;
- (void)setPath:(id *)a3;
@end

@implementation MKTileOverlayTile

- ($9433BFB5400FDC760880D1BFD6845728)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)setPath:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_path.z = *&a3->var2;
  *&self->_path.x = v3;
}

- ($4479F518DFD59EF68F6FA14DAF968345)path
{
  v3 = *&self->var3;
  *&retstr->var0 = *&self->var1;
  *&retstr->var2 = v3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MKTileOverlayTile;
  v4 = [(MKTileOverlayTile *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (x:%ld y:%ld z:%ld image:%ld bytes)", v4, self->_path.x, self->_path.y, self->_path.z, -[NSData length](self->_image, "length")];

  return v5;
}

@end