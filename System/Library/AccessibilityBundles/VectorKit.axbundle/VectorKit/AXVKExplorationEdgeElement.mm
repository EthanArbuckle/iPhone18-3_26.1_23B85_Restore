@interface AXVKExplorationEdgeElement
- (AXVKExplorationEdgeElement)initWithRoad:(id)road betweenFirstVertex:(id)vertex andSecondVertex:(id)secondVertex;
- (id)description;
@end

@implementation AXVKExplorationEdgeElement

- (AXVKExplorationEdgeElement)initWithRoad:(id)road betweenFirstVertex:(id)vertex andSecondVertex:(id)secondVertex
{
  v22[2] = *MEMORY[0x29EDCA608];
  roadCopy = road;
  vertexCopy = vertex;
  secondVertexCopy = secondVertex;
  v21.receiver = self;
  v21.super_class = AXVKExplorationEdgeElement;
  v12 = [(AXVKExplorationEdgeElement *)&v21 init];
  v13 = v12;
  v14 = 0;
  if (secondVertexCopy && vertexCopy && roadCopy && v12)
  {
    objc_storeStrong(&v12->_road, road);
    vertices = v13->_vertices;
    v13->_vertices = 0;

    v22[0] = vertexCopy;
    v22[1] = secondVertexCopy;
    v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:v22 count:2];
    v17 = v13->_vertices;
    v13->_vertices = v16;

    neighbors = [vertexCopy neighbors];
    [neighbors addObject:secondVertexCopy];

    neighbors2 = [secondVertexCopy neighbors];
    [neighbors2 addObject:vertexCopy];

    v14 = v13;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  vertices = [(AXVKExplorationEdgeElement *)self vertices];
  firstObject = [vertices firstObject];
  vertices2 = [(AXVKExplorationEdgeElement *)self vertices];
  v8 = [vertices2 objectAtIndex:1];
  v9 = [v3 stringWithFormat:@"%@:%p: connecting {%@} AND {%@}", v4, self, firstObject, v8];

  return v9;
}

@end