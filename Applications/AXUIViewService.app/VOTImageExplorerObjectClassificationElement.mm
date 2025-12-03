@interface VOTImageExplorerObjectClassificationElement
- (id)accessibilityValue;
- (id)axObjectLabel;
@end

@implementation VOTImageExplorerObjectClassificationElement

- (id)accessibilityValue
{
  feature = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [feature locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

- (id)axObjectLabel
{
  feature = [(VOTImageExplorerElement *)self feature];
  classificationLabel = [feature classificationLabel];
  v5 = [classificationLabel isEqualToString:@"people"];

  if (v5)
  {
    v6 = sub_10000CCD4(@"VoiceOverImageExplorer.person.no.face.detected");
    classificationLocalizedValue = [NSString stringWithFormat:v6, [(VOTImageExplorerObjectClassificationElement *)self objectIndex]];
  }

  else
  {
    matchingScenes = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
    v9 = [matchingScenes count];

    if (v9)
    {
      matchingScenes2 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
      v11 = [matchingScenes2 count];

      if (v11 == 1)
      {
        matchingScenes3 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
        allObjects = [matchingScenes3 allObjects];
        sceneClassId3 = [allObjects objectAtIndex:0];

        sceneClassId = [sceneClassId3 sceneClassId];
        intValue = [sceneClassId intValue];

        feature2 = [(VOTImageExplorerElement *)self feature];
        sceneClassId2 = [feature2 sceneClassId];
        intValue2 = [sceneClassId2 intValue];

        if ([AXMPhotoVisionSupport axmIsSceneClassId:intValue childOfSceneClassId:intValue2])
        {
          matchingScenes4 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
          allObjects2 = [matchingScenes4 allObjects];
          v22 = [allObjects2 objectAtIndex:0];
          classificationLocalizedValue = [v22 classificationLocalizedValue];
        }

        else
        {
          matchingScenes4 = [(VOTImageExplorerElement *)self feature];
          classificationLocalizedValue = [matchingScenes4 classificationLocalizedValue];
        }
      }

      else
      {
        feature3 = [(VOTImageExplorerElement *)self feature];
        sceneClassId3 = [feature3 sceneClassId];

        v24 = +[NSMutableArray array];
        matchingScenes5 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000CA10;
        v28[3] = &unk_100028BD8;
        v29 = v24;
        matchingScenes4 = v24;
        [matchingScenes5 enumerateObjectsUsingBlock:v28];

        v26 = +[AXMPhotoVisionSupport findLeastCommonAncestorForSceneClassIds:withKnownAncestorSceneClassId:](AXMPhotoVisionSupport, "findLeastCommonAncestorForSceneClassIds:withKnownAncestorSceneClassId:", matchingScenes4, [sceneClassId3 intValue]);
        classificationLocalizedValue = [v26 localizedName];
      }
    }

    else
    {
      sceneClassId3 = [(VOTImageExplorerElement *)self feature];
      classificationLocalizedValue = [sceneClassId3 classificationLocalizedValue];
    }
  }

  return classificationLocalizedValue;
}

@end