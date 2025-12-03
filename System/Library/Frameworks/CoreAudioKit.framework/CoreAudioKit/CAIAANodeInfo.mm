@interface CAIAANodeInfo
- (CAIAANodeInfo)init;
- (id)nodeWithNodeInfo:(id)info;
- (void)refresh;
- (void)setLabelColor:(id)color;
@end

@implementation CAIAANodeInfo

- (CAIAANodeInfo)init
{
  v5.receiver = self;
  v5.super_class = CAIAANodeInfo;
  v2 = [(CAIAANodeInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CAIAANodeInfo *)v2 createNodeList];
  }

  return v3;
}

- (id)nodeWithNodeInfo:(id)info
{
  [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    v5 = 0x4053000000000000;
  }

  else
  {
    v5 = 0x404E000000000000;
  }

  v6 = *&v5;
  v7 = [CANodeButton buttonWithType:0];
  -[CANodeButton setUrl:](v7, "setUrl:", [info url]);
  [(CANodeButton *)v7 setTitle:@"Node" forState:0];
  [(CANodeButton *)v7 setTitleColor:self->labelColor forState:0];
  [(CANodeButton *)v7 setTitleColor:[(UIColor *)self->labelColor colorWithAlphaComponent:0.75] forState:2];
  -[CANodeButton setImage:forState:](v7, "setImage:forState:", [info icon], 0);
  [(CANodeButton *)v7 setFrame:0.0, 0.0, v6 + 12.0, v6 + 24.0];
  [objc_msgSend(-[CANodeButton imageView](v7 "imageView")];
  [-[CANodeButton titleLabel](v7 "titleLabel")];
  [(CANodeButton *)v7 setContentMode:2];
  [(CANodeButton *)v7 setHasLabel:0];
  return v7;
}

- (void)refresh
{
  v18 = *MEMORY[0x277D85DE8];
  nodeList = self->nodeList;
  if (!nodeList)
  {
    nodeList = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->nodeList = nodeList;
  }

  [(NSMutableArray *)nodeList removeAllObjects];
  mEMORY[0x277CEFD70] = [MEMORY[0x277CEFD70] sharedInstance];
  LODWORD(v5) = 1117257728;
  v6 = [mEMORY[0x277CEFD70] getApps:v5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(CAIAANodeInfo *)self nodeWithNodeInfo:v11];
        if ([v11 isCurrentApp])
        {
          [v12 setEnabled:0];
LABEL_12:
          [(NSMutableArray *)self->nodeList addObject:v12];
          continue;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_msgSend(v11 valueForKey:{@"isForeground", "BOOLValue"}] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)setLabelColor:(id)color
{
  v15 = *MEMORY[0x277D85DE8];
  self->labelColor = color;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  nodeList = self->nodeList;
  v5 = [(NSMutableArray *)nodeList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(nodeList);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setTitleColor:color forState:0];
        [v9 setTitleColor:objc_msgSend(color forState:{"colorWithAlphaComponent:", 0.75), 2}];
      }

      v6 = [(NSMutableArray *)nodeList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end