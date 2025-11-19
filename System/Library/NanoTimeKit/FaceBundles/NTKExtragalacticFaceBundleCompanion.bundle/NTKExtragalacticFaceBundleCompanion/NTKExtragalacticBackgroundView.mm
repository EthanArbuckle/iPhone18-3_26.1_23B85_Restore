@interface NTKExtragalacticBackgroundView
- (NTKExtragalacticBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation NTKExtragalacticBackgroundView

- (NTKExtragalacticBackgroundView)initWithFrame:(CGRect)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = NTKExtragalacticBackgroundView;
  v3 = [(NTKExtragalacticBackgroundView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [(NTKExtragalacticBackgroundView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    backgroundColors = v3->_backgroundColors;
    v3->_backgroundColors = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    backgroundLayers = v3->_backgroundLayers;
    v3->_backgroundLayers = v7;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = +[NTKExtragalacticLayoutHelper allCorners];
    v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = [v13 unsignedIntegerValue];
          v15 = [NTKExtragalacticColors identityColorForCorner:v14];
          [(NSMutableArray *)v3->_backgroundColors setObject:v15 atIndexedSubscript:v14];
          [(NTKExtragalacticBackgroundView *)v3 bounds];
          [NTKExtragalacticLayoutHelper frameForCorner:v14 screenBounds:?];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = [MEMORY[0x277CD9ED0] layer];
          [v24 setFrame:{v17, v19, v21, v23}];
          [v24 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];
          if (qword_27E1DC2C0 != -1)
          {
            sub_23BE55308();
          }

          [v24 setActions:qword_27E1DC2B8];
          v25 = [(NTKExtragalacticBackgroundView *)v3 layer];
          [v25 addSublayer:v24];

          [(NSMutableDictionary *)v3->_backgroundLayers setObject:v24 forKeyedSubscript:v13];
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

@end