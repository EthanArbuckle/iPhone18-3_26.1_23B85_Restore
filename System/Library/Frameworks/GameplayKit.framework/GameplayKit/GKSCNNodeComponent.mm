@interface GKSCNNodeComponent
+ (GKSCNNodeComponent)componentWithNode:(SCNNode *)node;
- (GKSCNNodeComponent)initWithCoder:(id)coder;
- (GKSCNNodeComponent)initWithNode:(SCNNode *)node;
- (id)copyWithZone:(_NSZone *)zone;
- (void)agentDidUpdate:(id)update;
- (void)agentWillUpdate:(id)update;
- (void)encodeWithCoder:(id)coder;
- (void)setEntity:(id)entity;
@end

@implementation GKSCNNodeComponent

+ (GKSCNNodeComponent)componentWithNode:(SCNNode *)node
{
  v3 = node;
  v4 = [objc_alloc(objc_opt_class()) initWithNode:v3];

  return v4;
}

- (GKSCNNodeComponent)initWithNode:(SCNNode *)node
{
  v5 = node;
  v9.receiver = self;
  v9.super_class = GKSCNNodeComponent;
  v6 = [(GKComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
  }

  return v7;
}

- (GKSCNNodeComponent)initWithCoder:(id)coder
{
  v14[12] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GKSCNNodeComponent;
  v5 = [(GKComponent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v14[4] = objc_opt_class();
    v14[5] = objc_opt_class();
    v14[6] = objc_opt_class();
    v14[7] = objc_opt_class();
    v14[8] = objc_opt_class();
    v14[9] = objc_opt_class();
    v14[10] = objc_opt_class();
    v14[11] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:12];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_serializableNodeIndexPath"];
    serializableNodeIndexPath = v5->_serializableNodeIndexPath;
    v5->_serializableNodeIndexPath = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = GKSCNNodeComponent;
  [(GKComponent *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CDBAF0] _indexPathForNode:self->_node];
  if (v5)
  {
    [coderCopy encodeObject:v5 forKey:@"_serializableNodeIndexPath"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GKSCNNodeComponent;
  v4 = [(GKComponent *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_node);
  return v4;
}

- (void)setEntity:(id)entity
{
  v5.receiver = self;
  v5.super_class = GKSCNNodeComponent;
  entityCopy = entity;
  [(GKComponent *)&v5 setEntity:entityCopy];
  [(SCNNode *)self->_node setEntity:entityCopy, v5.receiver, v5.super_class];
}

- (void)agentWillUpdate:(id)update
{
  node = self->_node;
  updateCopy = update;
  [(SCNNode *)node position];
  HIDWORD(v6) = v5;
  [updateCopy setPosition:v6];
  [(SCNNode *)self->_node orientation];
  v8 = v7 * v7;
  v10 = v7 * v9;
  v12 = v7 * v11;
  v14 = v7 * v13;
  v15 = v9 * v11;
  v16 = v9 * v13;
  v17 = v11 * v11;
  v18 = v11 * v13;
  *&v19 = 1.0 - (((v9 * v9) + (v11 * v11)) + ((v9 * v9) + (v11 * v11)));
  *&v20 = (v10 - v18) + (v10 - v18);
  *&v21 = (v12 + v16) + (v12 + v16);
  *(&v19 + 1) = (v10 + v18) + (v10 + v18);
  *(&v20 + 1) = 1.0 - ((v8 + v17) + (v8 + v17));
  *(&v21 + 1) = (v15 - v14) + (v15 - v14);
  [updateCopy setRotation:{v19, v20, v21}];
}

- (void)agentDidUpdate:(id)update
{
  updateCopy = update;
  [updateCopy rotation];
  v6 = v5 + 1.0;
  v9 = sqrtf((v5 + 1.0) - (v8 + *(&v7 + 1))) * 0.5;
  v10 = 1.0 - v5;
  *&v7 = sqrtf((*(&v7 + 1) - v8) + v10) * 0.5;
  *&v11 = sqrtf((v8 - *(&v7 + 1)) + v10) * 0.5;
  *&v12 = sqrtf((v8 + *(&v7 + 1)) + v6) * 0.5;
  *&v13 = v9;
  [(SCNNode *)self->_node setOrientation:v13, v7, v11, v12];
  [updateCopy position];
  v18 = v14;

  LODWORD(v16) = DWORD2(v18);
  LODWORD(v15) = DWORD1(v18);
  node = self->_node;

  [(SCNNode *)node setPosition:*&v18, v15, v16];
}

@end