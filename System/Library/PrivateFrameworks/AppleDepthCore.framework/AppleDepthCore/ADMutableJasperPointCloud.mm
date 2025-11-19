@interface ADMutableJasperPointCloud
- (ADMutableJasperPointCloud)initWithCapacity:(int)a3;
- (ADMutableJasperPointCloud)initWithCapacity:(int)a3 storage:(__CVBuffer *)a4;
- (void)appendPointsFrom:(id)a3;
- (void)appendPointsFrom:(id)a3 range:(_NSRange)a4;
- (void)replacePointsInRange:(_NSRange)a3 withPointsFrom:(id)a4 range:(_NSRange)a5;
- (void)resize:(int)a3;
@end

@implementation ADMutableJasperPointCloud

- (void)replacePointsInRange:(_NSRange)a3 withPointsFrom:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v10 = a4;
  if (v7 != length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot replace a given number of points with a different number of points"];
  }

  if ((appledepth::JasperPointCloud::replacePoints(&self->super._pc, v8, v7, (v10 + 8), location) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Range is outside of point cloud bounds"];
  }
}

- (void)appendPointsFrom:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  m_header = self->super._pc.m_header;
  if (m_header)
  {
    v8 = *(m_header + 1);
    LODWORD(m_header) = v8;
  }

  else
  {
    v8 = 0;
  }

  [(ADMutableJasperPointCloud *)self resize:(m_header + length)];
  appledepth::JasperPointCloud::replacePoints(&self->super._pc, v8, length, (v9 + 8), location);
}

- (void)appendPointsFrom:(id)a3
{
  v4 = a3;
  v5 = v4[2];
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  [(ADMutableJasperPointCloud *)self appendPointsFrom:v4 range:0, v6];
}

- (void)resize:(int)a3
{
  if (self->super._pc.m_capacity >= a3)
  {
    *(self->super._pc.m_header + 1) = a3;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot resize a point cloud if capacity doesn't permit so"];
  }
}

- (ADMutableJasperPointCloud)initWithCapacity:(int)a3 storage:(__CVBuffer *)a4
{
  v5.receiver = self;
  v5.super_class = ADMutableJasperPointCloud;
  result = [(ADJasperPointCloud *)&v5 initWithLength:*&a3 storage:a4];
  if (result)
  {
    *(result->super._pc.m_header + 1) = 0;
  }

  return result;
}

- (ADMutableJasperPointCloud)initWithCapacity:(int)a3
{
  v4.receiver = self;
  v4.super_class = ADMutableJasperPointCloud;
  result = [(ADJasperPointCloud *)&v4 initWithLength:*&a3];
  if (result)
  {
    *(result->super._pc.m_header + 1) = 0;
  }

  return result;
}

@end