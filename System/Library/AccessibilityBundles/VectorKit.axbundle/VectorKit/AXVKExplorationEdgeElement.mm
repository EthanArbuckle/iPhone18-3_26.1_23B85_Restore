@interface AXVKExplorationEdgeElement
- (AXVKExplorationEdgeElement)initWithRoad:(id)a3 betweenFirstVertex:(id)a4 andSecondVertex:(id)a5;
- (id)description;
@end

@implementation AXVKExplorationEdgeElement

- (AXVKExplorationEdgeElement)initWithRoad:(id)a3 betweenFirstVertex:(id)a4 andSecondVertex:(id)a5
{
  v22[2] = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AXVKExplorationEdgeElement;
  v12 = [(AXVKExplorationEdgeElement *)&v21 init];
  v13 = v12;
  v14 = 0;
  if (v11 && v10 && v9 && v12)
  {
    objc_storeStrong(&v12->_road, a3);
    vertices = v13->_vertices;
    v13->_vertices = 0;

    v22[0] = v10;
    v22[1] = v11;
    v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:v22 count:2];
    v17 = v13->_vertices;
    v13->_vertices = v16;

    v18 = [v10 neighbors];
    [v18 addObject:v11];

    v19 = [v11 neighbors];
    [v19 addObject:v10];

    v14 = v13;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = [(AXVKExplorationEdgeElement *)self vertices];
  v6 = [v5 firstObject];
  v7 = [(AXVKExplorationEdgeElement *)self vertices];
  v8 = [v7 objectAtIndex:1];
  v9 = [v3 stringWithFormat:@"%@:%p: connecting {%@} AND {%@}", v4, self, v6, v8];

  return v9;
}

@end