@interface VOTImageExplorerImageView
- (BOOL)addElement:(id)a3 toElements:(id)a4 forFeatureKey:(id)a5;
- (BOOL)isAccessibilityElement;
- (NSArray)axSortedElements;
- (NSDictionary)elements;
- (id)_accessibilityCustomContentForFeature:(id)a3;
- (id)_axNearbyRelationKeyForFeature:(id)a3 andNeighborFeature:(id)a4;
- (id)_axNearbyRelationsForFeature:(id)a3;
- (id)_axRelationOfCurrentFrame:(CGRect)a3 withNeighborFrame:(CGRect)a4;
- (id)_findPeopleFeatureThatOverlapsWithFace:(id)a3;
- (id)_generateFaceAccessibilityElements;
- (id)_generateOCRDocumentAccessibilityElements;
- (id)_generateOCRTextAccessibilityElementsForFeature:(id)a3;
- (id)_generateObjectClassificationAccessibilityElements;
- (id)accessibilityCustomRotors;
- (id)filteredSubfeaturesForFeature:(id)a3 withOCRType:(int64_t)a4;
- (id)generateAccessibilityElements;
- (id)imageExplorerRotorWithName:(id)a3;
- (id)sortedElements;
- (void)setVisionFeatures:(id)a3;
@end

@implementation VOTImageExplorerImageView

- (void)setVisionFeatures:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  [(VOTImageExplorerImageView *)self setObjectClassificationFeatures:v5];

  v6 = +[NSMutableArray array];
  [(VOTImageExplorerImageView *)self setSceneClassificationFeatures:v6];

  v7 = +[NSMutableArray array];
  [(VOTImageExplorerImageView *)self setOcrFeatures:v7];

  v8 = +[NSMutableArray array];
  [(VOTImageExplorerImageView *)self setFaceFeatures:v8];

  v9 = +[NSMutableArray array];
  [(VOTImageExplorerImageView *)self setPeopleFeatures:v9];

  v10 = [NSArray axArrayByIgnoringNilElementsWithCount:1, @"people"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [v16 featureType];
        if (v17 > 9)
        {
          if (v17 > 26)
          {
            if (v17 == 27)
            {
              if (!AXRuntimeCheck_MediaAnalysisSupport())
              {
                continue;
              }

LABEL_21:
              v19 = [v16 classificationLabel];
              v20 = [v10 containsObject:v19];

              if (v20)
              {
                v21 = [v16 classificationLabel];
                v22 = [v21 isEqualToString:@"people"];

                if (!v22)
                {
                  continue;
                }

                v18 = [(VOTImageExplorerImageView *)self peopleFeatures];
              }

              else
              {
                v18 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
              }

LABEL_27:
              v26 = v18;
              [v18 axSafelyAddObject:v16];

              continue;
            }

            if (v17 == 31 && AXRuntimeCheck_MediaAnalysisSupport())
            {
LABEL_19:
              v18 = [(VOTImageExplorerImageView *)self faceFeatures];
              goto LABEL_27;
            }
          }

          else
          {
            if (v17 == 10)
            {
              goto LABEL_21;
            }

            if (v17 == 26 && AXRuntimeCheck_MediaAnalysisSupport())
            {
LABEL_15:
              v18 = [(VOTImageExplorerImageView *)self sceneClassificationFeatures];
              goto LABEL_27;
            }
          }
        }

        else
        {
          if ((v17 - 5) < 2)
          {
            goto LABEL_19;
          }

          if (v17 == 8)
          {
            v23 = [(VOTImageExplorerImageView *)self explorableOCRTypes];
            v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 ocrFeatureType]);
            v25 = [v23 containsObject:v24];

            if (!v25)
            {
              continue;
            }

            v18 = [(VOTImageExplorerImageView *)self ocrFeatures];
            goto LABEL_27;
          }

          if (v17 == 9)
          {
            goto LABEL_15;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v27 = [(VOTImageExplorerImageView *)self faceFeatures];
  if ([v27 count])
  {
    goto LABEL_33;
  }

  v28 = [(VOTImageExplorerImageView *)self peopleFeatures];
  v29 = [v28 count];

  if (v29)
  {
    v27 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
    v30 = [(VOTImageExplorerImageView *)self peopleFeatures];
    [v27 axSafelyAddObjectsFromArray:v30];

LABEL_33:
  }
}

- (NSDictionary)elements
{
  if (!self->_elements)
  {
    v3 = [(VOTImageExplorerImageView *)self ocrFeatures];
    if ([v3 count])
    {
LABEL_5:

LABEL_6:
      v5 = [(VOTImageExplorerImageView *)self generateAccessibilityElements];
      elements = self->_elements;
      self->_elements = v5;

      goto LABEL_7;
    }

    v4 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
    if ([v4 count])
    {

      goto LABEL_5;
    }

    v9 = [(VOTImageExplorerImageView *)self faceFeatures];
    v10 = [v9 count];

    if (v10)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v7 = self->_elements;

  return v7;
}

- (NSArray)axSortedElements
{
  if (!self->_axSortedElements)
  {
    v3 = [(VOTImageExplorerImageView *)self elements];

    if (v3)
    {
      v4 = [(VOTImageExplorerImageView *)self sortedElements];
      axSortedElements = self->_axSortedElements;
      self->_axSortedElements = v4;
    }
  }

  v6 = self->_axSortedElements;

  return v6;
}

- (id)filteredSubfeaturesForFeature:(id)a3 withOCRType:(int64_t)a4
{
  v5 = [a3 subfeatures];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009000;
  v9[3] = &unk_100028978;
  v9[4] = a4;
  v6 = [NSPredicate predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(VOTImageExplorerImageView *)self axSortedElements];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)accessibilityCustomRotors
{
  v3 = +[NSMutableArray array];
  v33.receiver = self;
  v33.super_class = VOTImageExplorerImageView;
  v4 = [(VOTImageExplorerImageView *)&v33 accessibilityCustomRotors];
  v28 = v3;
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(VOTImageExplorerImageView *)self ocrFeatures];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(VOTImageExplorerImageView *)self ocrFeatures];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = *v30;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 ocrFeatureType]);
        v15 = [v7 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 ocrFeatureType]);
          [v7 addObject:v16];

          v17 = [v13 ocrFeatureType];
          if (v17 <= 12)
          {
            if (v17 == 1)
            {
              v18 = @"VoiceOverImageExplorer.text.rotor";
            }

            else
            {
              if (v17 != 7)
              {
                continue;
              }

              v18 = @"VoiceOverImageExplorer.table.rotor";
            }

            goto LABEL_19;
          }

          if (v17 == 16 || v17 == 13)
          {
            v18 = @"VoiceOverImageExplorer.document.rotor";
LABEL_19:
            v20 = [(VOTImageExplorerImageView *)self imageExplorerRotorWithName:v18];
            [v28 axSafelyAddObject:v20];

            continue;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v10)
      {
LABEL_22:

        break;
      }
    }
  }

  v21 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(VOTImageExplorerImageView *)self imageExplorerRotorWithName:@"VoiceOverImageExplorer.objects.rotor"];
    [v28 axSafelyAddObject:v23];
  }

  v24 = [(VOTImageExplorerImageView *)self faceFeatures];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(VOTImageExplorerImageView *)self imageExplorerRotorWithName:@"VoiceOverImageExplorer.people.rotor"];
    [v28 axSafelyAddObject:v26];
  }

  return v28;
}

- (id)generateAccessibilityElements
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(VOTImageExplorerImageView *)self ocrFeatures];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(VOTImageExplorerImageView *)self _generateOCRDocumentAccessibilityElements];
    [v3 axSafelyAddEntriesFromDictionary:v6];
  }

  v7 = [(VOTImageExplorerImageView *)self faceFeatures];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(VOTImageExplorerImageView *)self _generateFaceAccessibilityElements];
    [v3 axSafelyAddEntriesFromDictionary:v9];
  }

  v10 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(VOTImageExplorerImageView *)self _generateObjectClassificationAccessibilityElements];
    [v3 axSafelyAddEntriesFromDictionary:v12];
  }

  return v3;
}

- (id)_generateOCRDocumentAccessibilityElements
{
  v3 = +[NSMutableDictionary dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(VOTImageExplorerImageView *)self ocrFeatures];
  v4 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v48;
    *&v5 = 138412546;
    v37 = v5;
    v38 = *v48;
    v39 = v3;
    do
    {
      v8 = 0;
      v40 = v6;
      do
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * v8);
        if ([v9 ocrFeatureType] == 1)
        {
          v10 = [(VOTImageExplorerImageView *)self _generateOCRTextAccessibilityElementsForFeature:v9];
          [v3 axSafelyAddEntriesFromDictionary:v10];
        }

        else
        {
          v44 = v8;
          v11 = [v9 ocrFeatureType];
          v12 = @"VoiceOverImageExplorer.document.rotor";
          if (v11 == 7)
          {
            v12 = @"VoiceOverImageExplorer.table.rotor";
          }

          v42 = v12;
          v13 = &off_1000283E0;
          if (v11 != 7)
          {
            v13 = off_1000283D8;
          }

          v14 = [objc_alloc(*v13) initWithImageView:self forFeature:v9 hasFlippedYAxis:0];
          v15 = [(VOTImageExplorerImageView *)self _accessibilityCustomContentForFeature:v9];
          v43 = v14;
          [v14 setAccessibilityCustomContent:v15];

          v16 = +[NSMutableArray array];
          v17 = [(VOTImageExplorerImageView *)self filteredSubfeaturesForFeature:v9 withOCRType:9];
          v18 = [v17 count];

          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = [(VOTImageExplorerImageView *)self filteredSubfeaturesForFeature:v9 withOCRType:9];
              v21 = [v20 objectAtIndex:v19];

              v22 = [v21 subfeatures];
              v23 = [v22 count];

              if (v23)
              {
                v24 = 0;
                do
                {
                  v25 = [v21 subfeatures];
                  v26 = [v25 objectAtIndex:v24];

                  v27 = [[VOTImageExplorerTextElement alloc] initWithImageView:self forTextFeature:v26 withParentTextFeature:v9 hasFlippedYAxis:0];
                  v28 = [(VOTImageExplorerImageView *)self _accessibilityCustomContentForFeature:v9];
                  [(VOTImageExplorerTextElement *)v27 setAccessibilityCustomContent:v28];

                  [(VOTImageExplorerTextElement *)v27 setRowIndex:v19];
                  [(VOTImageExplorerTextElement *)v27 setColumnIndex:v24];
                  [v16 axSafelyAddObject:v27];

                  ++v24;
                  v29 = [v21 subfeatures];
                  v30 = [v29 count];
                }

                while (v24 < v30);
              }

              ++v19;
              v31 = [(VOTImageExplorerImageView *)self filteredSubfeaturesForFeature:v9 withOCRType:9];
              v32 = [v31 count];
            }

            while (v19 < v32);
          }

          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_100009940;
          v45[3] = &unk_1000289E0;
          v33 = v16;
          v46 = v33;
          v10 = v43;
          [v43 _setAccessibilityElementsBlock:v45];
          v3 = v39;
          v8 = v44;
          if (![(VOTImageExplorerImageView *)self addElement:v43 toElements:v39 forFeatureKey:v42])
          {
            v34 = VOTLogImageExplorer();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              v35 = [v43 description];
              *buf = v37;
              v52 = v35;
              v53 = 2112;
              v54 = v42;
              _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Unable to add element %@ with a feature key of: %@", buf, 0x16u);
            }
          }

          v7 = v38;
          v6 = v40;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_generateOCRTextAccessibilityElementsForFeature:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(VOTImageExplorerElement *)[VOTImageExplorerDocumentElement alloc] initWithImageView:self forFeature:v4 hasFlippedYAxis:0];
  v7 = +[NSMutableArray array];
  v8 = [v4 value];
  v9 = [v8 length];

  if (v9)
  {
    v21 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [v4 subfeatures];
    v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v24)
    {
      v23 = *v32;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v12 = [v11 subfeatures];
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [[VOTImageExplorerTextElement alloc] initWithImageView:self forTextFeature:*(*(&v27 + 1) + 8 * j) withParentTextFeature:v4 hasFlippedYAxis:0];
                [v7 axSafelyAddObject:v17];
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }
        }

        v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v24);
    }

    v5 = v21;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100009C5C;
  v25[3] = &unk_1000289E0;
  v18 = v7;
  v26 = v18;
  [(VOTImageExplorerDocumentElement *)v6 _setAccessibilityElementsBlock:v25];
  if (![(VOTImageExplorerImageView *)self addElement:v6 toElements:v5 forFeatureKey:@"VoiceOverImageExplorer.text.rotor"])
  {
    v19 = VOTLogImageExplorer();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100013CE8(v6, v19);
    }
  }

  return v5;
}

- (id)_generateObjectClassificationAccessibilityElements
{
  v3 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v23;
    *&v5 = 138412546;
    v20 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [(VOTImageExplorerImageView *)self sceneClassificationFeatures];
        v12 = [AXMVisionFeature filterFeatureList:v11 basedOnSceneClassIdsForFeature:v10];

        v13 = [v10 classificationLabel];
        v14 = [v13 isEqualToString:@"people"];

        v7 += v14;
        v15 = [[VOTImageExplorerObjectClassificationElement alloc] initWithImageView:self forFeature:v10 withMatchingScenes:v12 hasFlippedYAxis:1 objectIndex:v7];
        v16 = [(VOTImageExplorerImageView *)self _accessibilityCustomContentForFeature:v10];
        [(VOTImageExplorerObjectClassificationElement *)v15 setAccessibilityCustomContent:v16];

        if (![(VOTImageExplorerImageView *)self addElement:v15 toElements:v3 forFeatureKey:@"VoiceOverImageExplorer.objects.rotor"])
        {
          v17 = VOTLogImageExplorer();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            v18 = [(VOTImageExplorerObjectClassificationElement *)v15 description];
            *buf = v20;
            v27 = v18;
            v28 = 2112;
            v29 = @"VoiceOverImageExplorer.objects.rotor";
            _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unable to add element %@ with a feature key of: %@", buf, 0x16u);
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_generateFaceAccessibilityElements
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(VOTImageExplorerImageView *)self faceFeatures];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138412546;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [(VOTImageExplorerImageView *)self _findPeopleFeatureThatOverlapsWithFace:v10, v24];
        [v4 axSafelyAddObject:v11];
        v12 = [[VOTImageExplorerFaceElement alloc] initWithImageView:self forFaceFeature:v10 withOverlappingPeopleFeature:v11 hasFlippedYAxis:0];
        v13 = [(VOTImageExplorerImageView *)self _accessibilityCustomContentForFeature:v10];
        [(VOTImageExplorerFaceElement *)v12 setAccessibilityCustomContent:v13];

        if (![(VOTImageExplorerImageView *)self addElement:v12 toElements:v3 forFeatureKey:@"VoiceOverImageExplorer.people.rotor"])
        {
          v14 = VOTLogImageExplorer();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v25 = [(VOTImageExplorerFaceElement *)v12 description];
            *buf = v24;
            v34 = v25;
            v35 = 2112;
            v36 = @"VoiceOverImageExplorer.people.rotor";
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to add element %@ with a feature key of: %@", buf, 0x16u);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v15 = [(VOTImageExplorerImageView *)self faceFeatures];
  v16 = [v15 count];
  v17 = [(VOTImageExplorerImageView *)self peopleFeatures];
  v18 = [v17 count];

  if (v16 < v18)
  {
    v19 = [(VOTImageExplorerImageView *)self peopleFeatures];

    if (v19 && v4)
    {
      v20 = [(VOTImageExplorerImageView *)self peopleFeatures];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10000A244;
      v27[3] = &unk_100028A08;
      v28 = v4;
      [v20 ax_removeObjectsFromArrayUsingBlock:v27];
    }

    v21 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
    v22 = [(VOTImageExplorerImageView *)self peopleFeatures];
    [v21 axSafelyAddObjectsFromArray:v22];
  }

  return v3;
}

- (id)_findPeopleFeatureThatOverlapsWithFace:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000A3D4;
  v18 = sub_10000A3E4;
  v19 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0x10000000000000;
  v5 = [(VOTImageExplorerImageView *)self peopleFeatures];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A3EC;
  v9[3] = &unk_100028A30;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = v13;
  v12 = &v14;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v15[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (BOOL)addElement:(id)a3 toElements:(id)a4 forFeatureKey:(id)a5
{
  v7 = a3;
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = [v9 objectForKeyedSubscript:v8];
    if (!v10)
    {
      v10 = +[NSMutableArray array];
    }

    [v10 addObject:v7];
    [v9 setObject:v10 forKey:v8];
  }

  return a5 != 0;
}

- (id)imageExplorerRotorWithName:(id)a3
{
  v4 = a3;
  v5 = [(VOTImageExplorerImageView *)self elements];

  if (v5)
  {
    v6 = [(VOTImageExplorerImageView *)self imageExplorerRotorCache];
    v7 = [v6 objectForKey:v4];
    if (!v7)
    {
      objc_initWeak(&location, self);
      v8 = [UIAccessibilityCustomRotor alloc];
      v9 = sub_10000CCD4(v4);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000A820;
      v12[3] = &unk_100028A98;
      objc_copyWeak(&v14, &location);
      v10 = v4;
      v13 = v10;
      v7 = [v8 initWithName:v9 itemSearchBlock:v12];

      [v6 setObject:v7 forKey:v10];
      [(VOTImageExplorerImageView *)self setImageExplorerRotorCache:v6];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sortedElements
{
  v2 = [(VOTImageExplorerImageView *)self elements];
  v3 = [v2 allValues];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  v5 = [v4 sortedArrayUsingSelector:"accessibilityCompareGeometry:"];

  return v5;
}

- (id)_axRelationOfCurrentFrame:(CGRect)a3 withNeighborFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  MinX = CGRectGetMinX(a4);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = v11;
  v27.origin.y = v10;
  v27.size.width = v9;
  v27.size.height = v8;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v11;
  v28.origin.y = v10;
  v28.size.width = v9;
  v28.size.height = v8;
  MidY = CGRectGetMidY(v28);
  if (MidX >= MinX)
  {
    if (MidX >= MaxX)
    {
      v18 = @"VoiceOverImageExplorer.relations.top-left";
      if (MidY < MaxY)
      {
        v18 = @"VoiceOverImageExplorer.relations.left";
      }

      if (MidY > MinY)
      {
        v16 = v18;
      }

      else
      {
        v16 = @"VoiceOverImageExplorer.relations.bottom-left";
      }
    }

    else if (MidY <= MinY)
    {
      v16 = @"VoiceOverImageExplorer.relations.bottom";
    }

    else
    {
      if (MidY < MaxY)
      {
        v17 = 0;
        goto LABEL_19;
      }

      v16 = @"VoiceOverImageExplorer.relations.top";
    }
  }

  else
  {
    v15 = @"VoiceOverImageExplorer.relations.top-right";
    if (MidY < MaxY)
    {
      v15 = @"VoiceOverImageExplorer.relations.right";
    }

    if (MidY >= MinY)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"VoiceOverImageExplorer.relations.bottom-right";
    }
  }

  v17 = sub_10000CCD4(v16);
LABEL_19:

  return v17;
}

- (id)_axNearbyRelationKeyForFeature:(id)a3 andNeighborFeature:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 featureType];
  [v6 featureType];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    [v7 featureType];
    [v6 featureType];
  }

  if (v6 == v7)
  {
    v24 = 0;
  }

  else
  {
    [v6 normalizedFrame];
    [(VOTImageExplorerImageView *)self frame];
    UIAccessibilityFrameForBounds();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 normalizedFrame];
    [(VOTImageExplorerImageView *)self frame];
    UIAccessibilityFrameForBounds();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(VOTImageExplorerImageView *)self _axRelationOfCurrentFrame:v9 withNeighborFrame:v11, v13, v15, v16, v18, v20, v22];
    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    v32.origin.x = v17;
    v32.origin.y = v19;
    v32.size.width = v21;
    v32.size.height = v23;
    if (CGRectIntersectsRect(v29, v32))
    {
      v30.origin.x = v9;
      v30.origin.y = v11;
      v30.size.width = v13;
      v30.size.height = v15;
      v33.origin.x = v17;
      v33.origin.y = v19;
      v33.size.width = v21;
      v33.size.height = v23;
      if (CGRectContainsRect(v30, v33))
      {
        goto LABEL_7;
      }

      v31.origin.x = v17;
      v31.origin.y = v19;
      v31.size.width = v21;
      v31.size.height = v23;
      v34.origin.x = v9;
      v34.origin.y = v11;
      v34.size.width = v13;
      v34.size.height = v15;
      if (CGRectContainsRect(v31, v34))
      {
LABEL_7:
        v25 = sub_10000CCD4(@"VoiceOverImageExplorer.relations.overlaps");
        v26 = __UIAXStringForVariables();

        v24 = v26;
      }
    }
  }

  return v24;
}

- (id)_axNearbyRelationsForFeature:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  objc_initWeak(&location, self);
  v6 = [(VOTImageExplorerImageView *)self faceFeatures];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000B1B8;
  v26[3] = &unk_100028AC0;
  objc_copyWeak(&v29, &location);
  v7 = v4;
  v27 = v7;
  v8 = v5;
  v28 = v8;
  [v6 enumerateObjectsUsingBlock:v26];

  v9 = [(VOTImageExplorerImageView *)self objectClassificationFeatures];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000B32C;
  v22[3] = &unk_100028AC0;
  objc_copyWeak(&v25, &location);
  v10 = v7;
  v23 = v10;
  v11 = v8;
  v24 = v11;
  [v9 enumerateObjectsUsingBlock:v22];

  v12 = [(VOTImageExplorerImageView *)self ocrFeatures];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000B450;
  v18[3] = &unk_100028AC0;
  objc_copyWeak(&v21, &location);
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  [v12 enumerateObjectsUsingBlock:v18];

  v15 = v20;
  v16 = v14;

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v16;
}

- (id)_accessibilityCustomContentForFeature:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000A3D4;
  v13 = sub_10000A3E4;
  v14 = +[NSMutableArray array];
  v5 = [(VOTImageExplorerImageView *)self _axNearbyRelationsForFeature:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B6DC;
  v8[3] = &unk_100028BB0;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

@end