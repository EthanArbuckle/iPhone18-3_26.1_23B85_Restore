@interface GKSKNodeComponent
+ (GKSKNodeComponent)componentWithNode:(SKNode *)node;
- (GKSKNodeComponent)initWithCoder:(id)a3;
- (GKSKNodeComponent)initWithNode:(SKNode *)node;
- (id)copyWithZone:(_NSZone *)a3;
- (void)agentDidUpdate:(id)a3;
- (void)agentWillUpdate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEntity:(id)a3;
- (void)setNode:(SKNode *)node;
@end

@implementation GKSKNodeComponent

+ (GKSKNodeComponent)componentWithNode:(SKNode *)node
{
  v3 = node;
  v4 = [objc_alloc(objc_opt_class()) initWithNode:v3];

  return v4;
}

- (GKSKNodeComponent)initWithNode:(SKNode *)node
{
  v4 = node;
  v8.receiver = self;
  v8.super_class = GKSKNodeComponent;
  v5 = [(GKComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKSKNodeComponent *)v5 setNode:v4];
  }

  return v6;
}

- (GKSKNodeComponent)initWithCoder:(id)a3
{
  v15[12] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKSKNodeComponent;
  v5 = [(GKComponent *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v15[6] = objc_opt_class();
    v15[7] = objc_opt_class();
    v15[8] = objc_opt_class();
    v15[9] = objc_opt_class();
    v15[10] = objc_opt_class();
    v15[11] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:12];
    [v6 addObjectsFromArray:v7];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [v4 decodeObjectOfClasses:v6 forKey:@"_serializableNodeIndexPath"];
    serializableNodeIndexPath = v5->_serializableNodeIndexPath;
    v5->_serializableNodeIndexPath = v9;

    if (!v5->_serializableNodeIndexPath)
    {
      v11 = [v4 decodeObjectOfClasses:v6 forKey:@"_node"];
      [(GKSKNodeComponent *)v5 setNode:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GKSKNodeComponent;
  v4 = a3;
  [(GKComponent *)&v7 encodeWithCoder:v4];
  serializableNodeIndexPath = self->_serializableNodeIndexPath;
  if (serializableNodeIndexPath)
  {
    v6 = @"_serializableNodeIndexPath";
  }

  else
  {
    serializableNodeIndexPath = self->_node;
    v6 = @"_node";
  }

  [v4 encodeObject:serializableNodeIndexPath forKey:{v6, v7.receiver, v7.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = GKSKNodeComponent;
  v4 = [(GKComponent *)&v9 copyWithZone:a3];
  v5 = [(NSIndexPath *)self->_serializableNodeIndexPath copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(SKNode *)self->_node copy];
  [v4 setNode:v7];

  return v4;
}

- (void)setEntity:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKSKNodeComponent;
  v4 = a3;
  [(GKComponent *)&v5 setEntity:v4];
  [(SKNode *)self->_node setEntity:v4, v5.receiver, v5.super_class];
}

- (void)setNode:(SKNode *)node
{
  v4 = node;
  [(SKNode *)self->_node setEntity:0];
  v5 = self->_node;
  self->_node = v4;
  v6 = v4;

  v7 = [(GKComponent *)self entity];
  [(SKNode *)self->_node setEntity:v7];
}

- (void)agentWillUpdate:(id)a3
{
  node = self->_node;
  v10 = a3;
  [(SKNode *)node position];
  v9 = v5;
  [(SKNode *)self->_node position];
  v6.f64[0] = v9;
  v6.f64[1] = v7;
  [v10 setPosition:COERCE_DOUBLE(vcvt_f32_f64(v6))];
  [(SKNode *)self->_node zRotation];
  *&v8 = v8;
  [v10 setRotation:v8];
}

- (void)agentDidUpdate:(id)a3
{
  v4 = a3;
  [v4 position];
  v6 = v5;
  [v4 position];
  [(SKNode *)self->_node setPosition:v6, v7];
  [v4 rotation];
  v9 = v8;

  node = self->_node;

  [(SKNode *)node setZRotation:v9];
}

@end