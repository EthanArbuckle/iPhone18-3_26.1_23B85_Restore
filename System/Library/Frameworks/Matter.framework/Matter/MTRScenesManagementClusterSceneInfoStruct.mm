@interface MTRScenesManagementClusterSceneInfoStruct
- (MTRScenesManagementClusterSceneInfoStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterSceneInfoStruct

- (MTRScenesManagementClusterSceneInfoStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRScenesManagementClusterSceneInfoStruct;
  v2 = [(MTRScenesManagementClusterSceneInfoStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    sceneCount = v2->_sceneCount;
    v2->_sceneCount = &unk_284C3E588;

    currentScene = v3->_currentScene;
    v3->_currentScene = &unk_284C3E588;

    currentGroup = v3->_currentGroup;
    v3->_currentGroup = &unk_284C3E588;

    sceneValid = v3->_sceneValid;
    v3->_sceneValid = &unk_284C3E588;

    remainingCapacity = v3->_remainingCapacity;
    v3->_remainingCapacity = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterSceneInfoStruct);
  sceneCount = [(MTRScenesManagementClusterSceneInfoStruct *)self sceneCount];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setSceneCount:sceneCount];

  currentScene = [(MTRScenesManagementClusterSceneInfoStruct *)self currentScene];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setCurrentScene:currentScene];

  currentGroup = [(MTRScenesManagementClusterSceneInfoStruct *)self currentGroup];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setCurrentGroup:currentGroup];

  sceneValid = [(MTRScenesManagementClusterSceneInfoStruct *)self sceneValid];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setSceneValid:sceneValid];

  remainingCapacity = [(MTRScenesManagementClusterSceneInfoStruct *)self remainingCapacity];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setRemainingCapacity:remainingCapacity];

  fabricIndex = [(MTRScenesManagementClusterSceneInfoStruct *)self fabricIndex];
  [(MTRScenesManagementClusterSceneInfoStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sceneCount:%@ currentScene:%@; currentGroup:%@; sceneValid:%@; remainingCapacity:%@; fabricIndex:%@; >", v5, self->_sceneCount, self->_currentScene, self->_currentGroup, self->_sceneValid, self->_remainingCapacity, self->_fabricIndex];;

  return v6;
}

@end