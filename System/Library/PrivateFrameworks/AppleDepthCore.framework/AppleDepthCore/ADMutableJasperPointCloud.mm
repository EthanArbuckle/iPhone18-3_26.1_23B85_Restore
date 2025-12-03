@interface ADMutableJasperPointCloud
- (ADMutableJasperPointCloud)initWithCapacity:(int)capacity;
- (ADMutableJasperPointCloud)initWithCapacity:(int)capacity storage:(__CVBuffer *)storage;
- (void)appendPointsFrom:(id)from;
- (void)appendPointsFrom:(id)from range:(_NSRange)range;
- (void)replacePointsInRange:(_NSRange)range withPointsFrom:(id)from range:(_NSRange)a5;
- (void)resize:(int)resize;
@end

@implementation ADMutableJasperPointCloud

- (void)replacePointsInRange:(_NSRange)range withPointsFrom:(id)from range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = range.length;
  v8 = range.location;
  fromCopy = from;
  if (v7 != length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot replace a given number of points with a different number of points"];
  }

  if ((appledepth::JasperPointCloud::replacePoints(&self->super._pc, v8, v7, (fromCopy + 8), location) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Range is outside of point cloud bounds"];
  }
}

- (void)appendPointsFrom:(id)from range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  fromCopy = from;
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
  appledepth::JasperPointCloud::replacePoints(&self->super._pc, v8, length, (fromCopy + 8), location);
}

- (void)appendPointsFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[2];
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = fromCopy;
  [(ADMutableJasperPointCloud *)self appendPointsFrom:fromCopy range:0, v6];
}

- (void)resize:(int)resize
{
  if (self->super._pc.m_capacity >= resize)
  {
    *(self->super._pc.m_header + 1) = resize;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Cannot resize a point cloud if capacity doesn't permit so"];
  }
}

- (ADMutableJasperPointCloud)initWithCapacity:(int)capacity storage:(__CVBuffer *)storage
{
  v5.receiver = self;
  v5.super_class = ADMutableJasperPointCloud;
  result = [(ADJasperPointCloud *)&v5 initWithLength:*&capacity storage:storage];
  if (result)
  {
    *(result->super._pc.m_header + 1) = 0;
  }

  return result;
}

- (ADMutableJasperPointCloud)initWithCapacity:(int)capacity
{
  v4.receiver = self;
  v4.super_class = ADMutableJasperPointCloud;
  result = [(ADJasperPointCloud *)&v4 initWithLength:*&capacity];
  if (result)
  {
    *(result->super._pc.m_header + 1) = 0;
  }

  return result;
}

@end