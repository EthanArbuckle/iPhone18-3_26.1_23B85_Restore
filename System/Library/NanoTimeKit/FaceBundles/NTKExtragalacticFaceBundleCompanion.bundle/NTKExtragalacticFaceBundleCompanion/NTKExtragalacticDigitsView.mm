@interface NTKExtragalacticDigitsView
- (NTKExtragalacticDigitsView)initWithFrame:(CGRect)frame device:(id)device digitNumbers:(id)numbers;
- (void)_setupShapeLayers;
- (void)setDigitNumbers:(id)numbers;
@end

@implementation NTKExtragalacticDigitsView

- (NTKExtragalacticDigitsView)initWithFrame:(CGRect)frame device:(id)device digitNumbers:(id)numbers
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  numbersCopy = numbers;
  v20.receiver = self;
  v20.super_class = NTKExtragalacticDigitsView;
  height = [(NTKExtragalacticDigitsView *)&v20 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v15->_lineWidth = sub_23BE52760(v16, deviceCopy);
    v17 = [[NTKExtragalacticDigitLoader alloc] initWithDevice:deviceCopy];
    digitLoader = v15->_digitLoader;
    v15->_digitLoader = v17;

    [(NTKExtragalacticDigitsView *)v15 _setupShapeLayers];
    [(NTKExtragalacticDigitsView *)v15 setDigitNumbers:numbersCopy];
  }

  return v15;
}

- (void)_setupShapeLayers
{
  v62 = *MEMORY[0x277D85DE8];
  if (qword_27E1DC290 != -1)
  {
    sub_23BE552CC();
  }

  v2 = qword_27E1DC288;
  layer = [MEMORY[0x277CD9ED0] layer];
  fillContainerLayer = self->_fillContainerLayer;
  self->_fillContainerLayer = layer;

  [(NTKExtragalacticDigitsView *)self bounds];
  [(CALayer *)self->_fillContainerLayer setFrame:?];
  [(CALayer *)self->_fillContainerLayer setActions:v2];
  layer2 = [(NTKExtragalacticDigitsView *)self layer];
  [layer2 addSublayer:self->_fillContainerLayer];

  layer3 = [MEMORY[0x277CD9ED0] layer];
  strokeContainerLayer = self->_strokeContainerLayer;
  self->_strokeContainerLayer = layer3;

  [(NTKExtragalacticDigitsView *)self bounds];
  [(CALayer *)self->_strokeContainerLayer setFrame:?];
  [(CALayer *)self->_strokeContainerLayer setOpacity:0.0];
  [(CALayer *)self->_strokeContainerLayer setActions:v2];
  layer4 = [(NTKExtragalacticDigitsView *)self layer];
  [layer4 addSublayer:self->_strokeContainerLayer];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_23BE51E40;
  v58[3] = &unk_278B9B6B0;
  v37 = v2;
  v59 = v37;
  v9 = MEMORY[0x23EEBF4B0](v58);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_23BE51EC8;
  v56[3] = &unk_278B9B6D8;
  v10 = v9;
  v57 = v10;
  v44 = MEMORY[0x23EEBF4B0](v56);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_23BE51FA4;
  v54[3] = &unk_278B9B700;
  v36 = v10;
  v54[4] = self;
  v55 = v36;
  v43 = MEMORY[0x23EEBF4B0](v54);
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  glyphFillLayers = self->_glyphFillLayers;
  self->_glyphFillLayers = v11;

  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  glyphStrokeLayers = self->_glyphStrokeLayers;
  self->_glyphStrokeLayers = v13;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = +[NTKExtragalacticLayoutHelper allCorners];
  v40 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v40)
  {
    v39 = *v51;
    do
    {
      v15 = 0;
      do
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v50 + 1) + 8 * v15);
        v42 = v15;
        unsignedIntegerValue = [v41 unsignedIntegerValue];
        [(NTKExtragalacticDigitsView *)self bounds];
        [NTKExtragalacticLayoutHelper frameForCorner:unsignedIntegerValue screenBounds:?];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = objc_opt_new();
        v26 = objc_opt_new();
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v27 = [&unk_284E9BC00 countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v47;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v47 != v29)
              {
                objc_enumerationMutation(&unk_284E9BC00);
              }

              unsignedIntegerValue2 = [*(*(&v46 + 1) + 8 * i) unsignedIntegerValue];
              v32 = [NTKExtragalacticColors identityColorForGlyphColor:unsignedIntegerValue2];
              v33 = (v44)[2](v44, v32, v18, v20, v22, v24);
              [(CALayer *)self->_fillContainerLayer addSublayer:v33];
              [v25 setShapeLayer:v33 atGlyphColor:unsignedIntegerValue2];
              v34 = (v43)[2](v43, v32, v18, v20, v22, v24);
              [(CALayer *)self->_strokeContainerLayer addSublayer:v34];
              [v26 setShapeLayer:v34 atGlyphColor:unsignedIntegerValue2];
            }

            v28 = [&unk_284E9BC00 countByEnumeratingWithState:&v46 objects:v60 count:16];
          }

          while (v28);
        }

        [(NSMutableDictionary *)self->_glyphFillLayers setObject:v25 forKeyedSubscript:v41];
        [(NSMutableDictionary *)self->_glyphStrokeLayers setObject:v26 forKeyedSubscript:v41];

        v15 = v42 + 1;
      }

      while (v42 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v40);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setDigitNumbers:(id)numbers
{
  v68[3] = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  selfCopy = self;
  if (self->_digitNumbers == numbersCopy)
  {
    goto LABEL_37;
  }

  if (qword_27E1DC2A0 != -1)
  {
    sub_23BE552E0();
  }

  v46 = qword_27E1DC298;
  v5 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B950];
  v6 = [v5 isEqual:&unk_284E9B980];

  if (v6)
  {
    if (qword_27E1DC2B0 != -1)
    {
      sub_23BE552F4();
    }

    v7 = qword_27E1DC2A8;

    v67[0] = &unk_284E9B920;
    v67[1] = &unk_284E9B938;
    v68[0] = &unk_284E9B950;
    v68[1] = &unk_284E9B920;
    v67[2] = &unk_284E9B950;
    v68[2] = &unk_284E9B938;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
    v46 = v7;
    goto LABEL_13;
  }

  v8 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B950];
  if (([v8 isEqual:&unk_284E9B998] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B968];
  v10 = [v9 isEqual:&unk_284E9B9B0];

  if (!v10)
  {
LABEL_12:
    v53 = 0;
    goto LABEL_13;
  }

  v65[0] = &unk_284E9B920;
  v65[1] = &unk_284E9B938;
  v66[0] = &unk_284E9B950;
  v66[1] = &unk_284E9B938;
  v65[2] = &unk_284E9B950;
  v66[2] = &unk_284E9B920;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
LABEL_13:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = +[NTKExtragalacticLayoutHelper allCorners];
  v48 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v48)
  {
    v47 = *v60;
    v44 = numbersCopy;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v59 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)selfCopy->_digitNumbers objectForKeyedSubscript:v12];
        v14 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:v12];

        if (v13 != v14)
        {
          v50 = i;
          unsignedIntegerValue = [v12 unsignedIntegerValue];
          [(NTKExtragalacticDigitsView *)selfCopy bounds];
          [NTKExtragalacticLayoutHelper frameForCorner:unsignedIntegerValue screenBounds:?];
          v16 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:v12];
          [(NSMutableDictionary *)selfCopy->_digitNumbers setObject:v16 forKeyedSubscript:v12];
          v17 = [v46 objectForKeyedSubscript:v12];
          unsignedIntegerValue2 = [v17 unsignedIntegerValue];

          v49 = v16;
          v19 = [(NTKExtragalacticDigitLoader *)selfCopy->_digitLoader digitDrawInfoForNumber:v16 style:unsignedIntegerValue2];
          v20 = v19;
          if (v19)
          {
            [v19 unifiedGlyphSize];
            [NTKExtragalacticLayoutHelper digitCenterPositionForCorner:"digitCenterPositionForCorner:unifiedGlyphSize:cornerFrame:" unifiedGlyphSize:unsignedIntegerValue cornerFrame:?];
            v22 = v21;
            v24 = v23;
            v25 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
            [v25 removeAllPaths];

            v26 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
            [v26 removeAllPaths];

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            paths = [v20 paths];
            allKeys = [paths allKeys];

            v51 = allKeys;
            v29 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v29)
            {
              v30 = v29;
              v54 = *v56;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v56 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v32 = *(*(&v55 + 1) + 8 * j);
                  unsignedIntegerValue3 = [v32 unsignedIntegerValue];
                  paths2 = [v20 paths];
                  v35 = [paths2 objectForKeyedSubscript:v32];

                  if ([v12 isEqual:&unk_284E9B950] && v53)
                  {
                    v36 = [v53 objectForKeyedSubscript:v32];
                    paths3 = [v20 paths];
                    v38 = [paths3 objectForKeyedSubscript:v36];

                    v35 = v38;
                  }

                  if (v35)
                  {
                    v39 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
                    [v39 setPath:v35 forGlyphColor:unsignedIntegerValue3];

                    v40 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
                    [v40 setPosition:{v22, v24}];

                    v41 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
                    [v41 setPath:v35 forGlyphColor:unsignedIntegerValue3];

                    v42 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
                    [v42 setPosition:{v22, v24}];
                  }
                }

                v30 = [v51 countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v30);
            }

            numbersCopy = v44;
          }

          i = v50;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v48);
  }

LABEL_37:
  v43 = *MEMORY[0x277D85DE8];
}

@end