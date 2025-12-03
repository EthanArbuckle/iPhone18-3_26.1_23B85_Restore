@interface MLCYOLOLossDescriptor
+ (MLCYOLOLossDescriptor)descriptorWithAnchorBoxes:(NSData *)anchorBoxes anchorBoxCount:(NSUInteger)anchorBoxCount;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCYOLOLossDescriptor

+ (MLCYOLOLossDescriptor)descriptorWithAnchorBoxes:(NSData *)anchorBoxes anchorBoxCount:(NSUInteger)anchorBoxCount
{
  v6 = anchorBoxes;
  v7 = [[self alloc] initWithLossDescriptorWithSpatialPositionLossType:1 spatialSizeLossType:6 confidenceLossType:3 classesLossType:2 reductionType:1 anchorBoxCount:anchorBoxCount anchorBoxes:v6];

  return v7;
}

- (id)description
{
  v25 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  spatialPositionLossDescriptor = [(MLCYOLOLossDescriptor *)self spatialPositionLossDescriptor];
  lossType = [spatialPositionLossDescriptor lossType];
  spatialSizeLossDescriptor = [(MLCYOLOLossDescriptor *)self spatialSizeLossDescriptor];
  lossType2 = [spatialSizeLossDescriptor lossType];
  shouldRescore = [(MLCYOLOLossDescriptor *)self shouldRescore];
  [(MLCYOLOLossDescriptor *)self scaleNoObjectConfidenceLoss];
  v9 = v8;
  [(MLCYOLOLossDescriptor *)self scaleObjectConfidenceLoss];
  v11 = v10;
  [(MLCYOLOLossDescriptor *)self scaleClassLoss];
  v13 = v12;
  [(MLCYOLOLossDescriptor *)self minimumIOUForObjectPresence];
  v15 = v14;
  [(MLCYOLOLossDescriptor *)self maximumIOUForObjectAbsence];
  v17 = v16;
  confidenceLossDescriptor = [(MLCYOLOLossDescriptor *)self confidenceLossDescriptor];
  lossType3 = [confidenceLossDescriptor lossType];
  classesLossDescriptor = [(MLCYOLOLossDescriptor *)self classesLossDescriptor];
  v21 = [v25 stringWithFormat:@"%@: { spatialPositionLossType=%d : spatialSizeLossType=%d : rescore=%d : scaleNoObjectConfidenceLoss=%f : scaleObjectConfidenceLoss=%f : scaleClassLoss=%f :minimumIOUForObjectPresence=%f : maximumIOUForObjectAbsence=%fconfidenceLossType=%d : classesLossType=%d : reductionType=%d: numberOfAnchorBoxes=%lu }", v4, lossType, lossType2, shouldRescore, *&v9, *&v11, *&v13, *&v15, *&v17, lossType3, objc_msgSend(classesLossDescriptor, "lossType"), -[MLCYOLOLossDescriptor reductionType](self, "reductionType"), -[MLCYOLOLossDescriptor anchorBoxCount](self, "anchorBoxCount")];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    anchorBoxCount = [v5 anchorBoxCount];
    if (anchorBoxCount == [(MLCYOLOLossDescriptor *)self anchorBoxCount])
    {
      anchorBoxes = [v5 anchorBoxes];
      anchorBoxes2 = [(MLCYOLOLossDescriptor *)self anchorBoxes];
      if (![anchorBoxes isEqualToData:anchorBoxes2])
      {
        goto LABEL_19;
      }

      shouldRescore = [v5 shouldRescore];
      if (shouldRescore != [(MLCYOLOLossDescriptor *)self shouldRescore])
      {
        goto LABEL_19;
      }

      [v5 scaleSpatialPositionLoss];
      v11 = v10;
      [(MLCYOLOLossDescriptor *)self scaleSpatialPositionLoss];
      if (v11 != v12)
      {
        goto LABEL_19;
      }

      [v5 scaleSpatialSizeLoss];
      v14 = v13;
      [(MLCYOLOLossDescriptor *)self scaleSpatialSizeLoss];
      if (v14 != v15)
      {
        goto LABEL_19;
      }

      [v5 scaleNoObjectConfidenceLoss];
      v17 = v16;
      [(MLCYOLOLossDescriptor *)self scaleNoObjectConfidenceLoss];
      if (v17 != v18)
      {
        goto LABEL_19;
      }

      [v5 scaleObjectConfidenceLoss];
      v20 = v19;
      [(MLCYOLOLossDescriptor *)self scaleObjectConfidenceLoss];
      if (v20 != v21)
      {
        goto LABEL_19;
      }

      [v5 scaleClassLoss];
      v23 = v22;
      [(MLCYOLOLossDescriptor *)self scaleClassLoss];
      if (v23 != v24)
      {
        goto LABEL_19;
      }

      [v5 minimumIOUForObjectPresence];
      v26 = v25;
      [(MLCYOLOLossDescriptor *)self minimumIOUForObjectPresence];
      if (v26 == v27 && ([v5 maximumIOUForObjectAbsence], v29 = v28, -[MLCYOLOLossDescriptor maximumIOUForObjectAbsence](self, "maximumIOUForObjectAbsence"), v29 == v30))
      {
        spatialPositionLossDescriptor = [v5 spatialPositionLossDescriptor];
        spatialPositionLossDescriptor2 = [(MLCYOLOLossDescriptor *)self spatialPositionLossDescriptor];
        if ([spatialPositionLossDescriptor isEqual:spatialPositionLossDescriptor2])
        {
          spatialSizeLossDescriptor = [v5 spatialSizeLossDescriptor];
          spatialSizeLossDescriptor2 = [(MLCYOLOLossDescriptor *)self spatialSizeLossDescriptor];
          if ([spatialSizeLossDescriptor isEqual:spatialSizeLossDescriptor2])
          {
            confidenceLossDescriptor = [v5 confidenceLossDescriptor];
            confidenceLossDescriptor2 = [(MLCYOLOLossDescriptor *)self confidenceLossDescriptor];
            v45 = confidenceLossDescriptor;
            if ([confidenceLossDescriptor isEqual:confidenceLossDescriptor2])
            {
              classesLossDescriptor = [v5 classesLossDescriptor];
              classesLossDescriptor2 = [(MLCYOLOLossDescriptor *)self classesLossDescriptor];
              v43 = classesLossDescriptor;
              v38 = classesLossDescriptor;
              v39 = classesLossDescriptor2;
              if ([v38 isEqual:classesLossDescriptor2])
              {
                reductionType = [v5 reductionType];
                v40 = reductionType == [(MLCYOLOLossDescriptor *)self reductionType];
              }

              else
              {
                v40 = 0;
              }
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
LABEL_19:
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (unint64_t)hash
{
  v31 = 0;
  anchorBoxCount = [(MLCYOLOLossDescriptor *)self anchorBoxCount];
  anchorBoxes = [(MLCYOLOLossDescriptor *)self anchorBoxes];
  [anchorBoxes hash];
  [(MLCYOLOLossDescriptor *)self shouldRescore];
  v3 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self scaleSpatialPositionLoss];
  v29 = [v3 numberWithFloat:?];
  [v29 hash];
  v4 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self scaleSpatialSizeLoss];
  v27 = [v4 numberWithFloat:?];
  [v27 hash];
  v5 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self scaleNoObjectConfidenceLoss];
  v26 = [v5 numberWithFloat:?];
  [v26 hash];
  v6 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self scaleObjectConfidenceLoss];
  v25 = [v6 numberWithFloat:?];
  [v25 hash];
  v7 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self scaleClassLoss];
  v24 = [v7 numberWithFloat:?];
  [v24 hash];
  v8 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self minimumIOUForObjectPresence];
  v23 = [v8 numberWithFloat:?];
  [v23 hash];
  v9 = MEMORY[0x277CCABB0];
  [(MLCYOLOLossDescriptor *)self maximumIOUForObjectAbsence];
  v22 = [v9 numberWithFloat:?];
  [v22 hash];
  spatialPositionLossDescriptor = [(MLCYOLOLossDescriptor *)self spatialPositionLossDescriptor];
  [spatialPositionLossDescriptor hash];
  spatialSizeLossDescriptor = [(MLCYOLOLossDescriptor *)self spatialSizeLossDescriptor];
  [spatialSizeLossDescriptor hash];
  confidenceLossDescriptor = [(MLCYOLOLossDescriptor *)self confidenceLossDescriptor];
  [confidenceLossDescriptor hash];
  classesLossDescriptor = [(MLCYOLOLossDescriptor *)self classesLossDescriptor];
  [classesLossDescriptor hash];
  [(MLCYOLOLossDescriptor *)self reductionType];
  hashCombine_5(&v31, v14, v15, v16, v17, v18, v19, v20, anchorBoxCount);

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  anchorBoxCount = [(MLCYOLOLossDescriptor *)self anchorBoxCount];
  anchorBoxes = [(MLCYOLOLossDescriptor *)self anchorBoxes];
  v7 = [v4 initWithLossDescriptorWithSpatialPositionLossType:1 spatialSizeLossType:6 confidenceLossType:3 classesLossType:2 reductionType:1 anchorBoxCount:anchorBoxCount anchorBoxes:anchorBoxes];

  return v7;
}

- (void)initWithLossDescriptorWithSpatialPositionLossType:(NSObject *)a3 spatialSizeLossType:confidenceLossType:classesLossType:reductionType:anchorBoxCount:anchorBoxes:.cold.1(const char *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: failure to create yolo loss descriptor with reduceType = %d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end