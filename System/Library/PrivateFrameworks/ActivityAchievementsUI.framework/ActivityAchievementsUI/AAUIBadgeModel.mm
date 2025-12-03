@interface AAUIBadgeModel
- (AAUIBadgeModel)initWithPath:(id)path;
- (void)_loadModelAtPath:(id)path intoVertices:(id *)vertices indices:(unsigned int *)indices groups:(int *)groups materials:(int *)materials vertexCount:(int *)count indexCount:(int *)indexCount groupCount:(int *)self0;
- (void)dealloc;
@end

@implementation AAUIBadgeModel

- (AAUIBadgeModel)initWithPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10.receiver = self;
  v10.super_class = AAUIBadgeModel;
  v5 = [(AAUIBadgeModel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(AAUIBadgeModel *)v5 _loadModelAtPath:pathCopy intoVertices:&v16 indices:&v15 groups:&v14 materials:&v13 vertexCount:&v12 + 4 indexCount:&v12 groupCount:&v11];
    v7 = v15;
    v6->_vertices = v16;
    v6->_indices = v7;
    v8 = v13;
    v6->_groups = v14;
    v6->_materials = v8;
    LODWORD(v8) = v12;
    v6->_vertexCount = HIDWORD(v12);
    v6->_indexCount = v8;
    v6->_groupCount = v11;
  }

  return v6;
}

- (void)_loadModelAtPath:(id)path intoVertices:(id *)vertices indices:(unsigned int *)indices groups:(int *)groups materials:(int *)materials vertexCount:(int *)count indexCount:(int *)indexCount groupCount:(int *)self0
{
  *&size[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  [v10 getBytes:v25 length:12];
  v12 = v25[0];
  v11 = v25[1];
  v13 = size[0];
  v14 = malloc_type_calloc(4uLL, size[0], 0x6B4D52B5uLL);
  [v10 getBytes:v14 range:{12, 4 * v13}];
  v15 = 4 * v13 + 12;
  v16 = malloc_type_calloc(4uLL, v13, 0xEA0DB5FDuLL);
  [v10 getBytes:v16 range:{v15, 4 * v13}];
  v17 = v15 + 4 * v13;
  v18 = malloc_type_calloc(0x20uLL, v12, 0xE83DE86uLL);
  [v10 getBytes:v18 range:{v17, 32 * v12}];
  v11 *= 3;
  v19 = malloc_type_calloc(4uLL, v11, 0xBC34BC3EuLL);
  [v10 getBytes:v19 range:{v17 + 32 * v12, 4 * v11}];
  *count = v12;
  *indexCount = v11;
  *groupCount = v13;
  *vertices = v18;
  *indices = v19;
  *groups = v16;
  *materials = v14;
}

- (void)dealloc
{
  free(self->_materials);
  free(self->_groups);
  free(self->_vertices);
  free(self->_indices);
  v3.receiver = self;
  v3.super_class = AAUIBadgeModel;
  [(AAUIBadgeModel *)&v3 dealloc];
}

@end