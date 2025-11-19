@interface VOTImageExplorerObjectClassificationElement
- (id)accessibilityValue;
- (id)axObjectLabel;
@end

@implementation VOTImageExplorerObjectClassificationElement

- (id)accessibilityValue
{
  v3 = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [v3 locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

- (id)axObjectLabel
{
  v3 = [(VOTImageExplorerElement *)self feature];
  v4 = [v3 classificationLabel];
  v5 = [v4 isEqualToString:@"people"];

  if (v5)
  {
    v6 = sub_10000CCD4(@"VoiceOverImageExplorer.person.no.face.detected");
    v7 = [NSString stringWithFormat:v6, [(VOTImageExplorerObjectClassificationElement *)self objectIndex]];
  }

  else
  {
    v8 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
      v11 = [v10 count];

      if (v11 == 1)
      {
        v12 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
        v13 = [v12 allObjects];
        v14 = [v13 objectAtIndex:0];

        v15 = [v14 sceneClassId];
        v16 = [v15 intValue];

        v17 = [(VOTImageExplorerElement *)self feature];
        v18 = [v17 sceneClassId];
        v19 = [v18 intValue];

        if ([AXMPhotoVisionSupport axmIsSceneClassId:v16 childOfSceneClassId:v19])
        {
          v20 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
          v21 = [v20 allObjects];
          v22 = [v21 objectAtIndex:0];
          v7 = [v22 classificationLocalizedValue];
        }

        else
        {
          v20 = [(VOTImageExplorerElement *)self feature];
          v7 = [v20 classificationLocalizedValue];
        }
      }

      else
      {
        v23 = [(VOTImageExplorerElement *)self feature];
        v14 = [v23 sceneClassId];

        v24 = +[NSMutableArray array];
        v25 = [(VOTImageExplorerObjectClassificationElement *)self matchingScenes];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000CA10;
        v28[3] = &unk_100028BD8;
        v29 = v24;
        v20 = v24;
        [v25 enumerateObjectsUsingBlock:v28];

        v26 = +[AXMPhotoVisionSupport findLeastCommonAncestorForSceneClassIds:withKnownAncestorSceneClassId:](AXMPhotoVisionSupport, "findLeastCommonAncestorForSceneClassIds:withKnownAncestorSceneClassId:", v20, [v14 intValue]);
        v7 = [v26 localizedName];
      }
    }

    else
    {
      v14 = [(VOTImageExplorerElement *)self feature];
      v7 = [v14 classificationLocalizedValue];
    }
  }

  return v7;
}

@end