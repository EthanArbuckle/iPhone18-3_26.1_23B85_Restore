@interface ARCoachingBlendableSplineGroup
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData;
- (ARCoachingBlendableSplineGroup)initWithSplineGroups:(id)groups;
- (id).cxx_construct;
- (unsigned)indices;
@end

@implementation ARCoachingBlendableSplineGroup

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData
{
  if (self->_patchData.__begin_ == self->_patchData.__end_)
  {
    return 0;
  }

  else
  {
    return self->_patchData.__begin_;
  }
}

- (unsigned)indices
{
  if (self->_indices.__begin_ == self->_indices.__end_)
  {
    return 0;
  }

  else
  {
    return self->_indices.__begin_;
  }
}

- (ARCoachingBlendableSplineGroup)initWithSplineGroups:(id)groups
{
  v44 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v42.receiver = self;
  v42.super_class = ARCoachingBlendableSplineGroup;
  v4 = [(ARCoachingBlendableSplineGroup *)&v42 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    controlPoints = v4->_controlPoints;
    v4->_controlPoints = array;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = groupsCopy;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        v10 = 0;
        do
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          v12 = [v7 objectAtIndexedSubscript:0];
          numControlPoints = [v12 numControlPoints];
          if (numControlPoints != [v11 numControlPoints])
          {
            __assert_rtn("[ARCoachingBlendableSplineGroup initWithSplineGroups:]", "ARCoachingSpline.mm", 447, "splineGroups[0].numControlPoints == splineGroup.numControlPoints");
          }

          v14 = [v7 objectAtIndexedSubscript:0];
          numIndices = [v14 numIndices];
          if (numIndices != [v11 numIndices])
          {
            __assert_rtn("[ARCoachingBlendableSplineGroup initWithSplineGroups:]", "ARCoachingSpline.mm", 448, "splineGroups[0].numIndices == splineGroup.numIndices");
          }

          v16 = [v7 objectAtIndexedSubscript:0];
          patchDataLength = [v16 patchDataLength];
          if (patchDataLength != [v11 patchDataLength])
          {
            __assert_rtn("[ARCoachingBlendableSplineGroup initWithSplineGroups:]", "ARCoachingSpline.mm", 449, "splineGroups[0].patchDataLength == splineGroup.patchDataLength");
          }

          v18 = 0;
          for (i = 0; i < [v11 patchDataLength]; ++i)
          {
            v20 = [v7 objectAtIndexedSubscript:0];
            v36 = COERCE_FLOAT(*([v20 patchData] + v18));
            if (v36 != COERCE_FLOAT(*([v11 patchData] + v18)))
            {
              __assert_rtn("[ARCoachingBlendableSplineGroup initWithSplineGroups:]", "ARCoachingSpline.mm", 452, "splineGroups[0].patchData[i].factorScale.x == splineGroup.patchData[i].factorScale.x");
            }

            v21 = [v7 objectAtIndexedSubscript:0];
            LODWORD(v37) = HIDWORD(*([v21 patchData] + v18));
            if (v37 != *([v11 patchData] + v18 + 4))
            {
              __assert_rtn("[ARCoachingBlendableSplineGroup initWithSplineGroups:]", "ARCoachingSpline.mm", 453, "splineGroups[0].patchData[i].factorScale.y == splineGroup.patchData[i].factorScale.y");
            }

            v18 += 8;
          }

          v22 = -[ARCoachingControlPointContainer initWithControlPoints:numControlPoints:]([ARCoachingControlPointContainer alloc], "initWithControlPoints:numControlPoints:", [v11 controlPoints], objc_msgSend(v11, "numControlPoints"));
          [(NSMutableArray *)v4->_controlPoints addObject:v22];

          ++v10;
        }

        while (v10 != v8);
        v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
    }

    v23 = 0;
    for (j = 0; ; ++j)
    {
      v25 = [v7 objectAtIndexedSubscript:0];
      v26 = j < [v25 numIndices];

      if (!v26)
      {
        break;
      }

      v27 = [v7 objectAtIndexedSubscript:0];
      std::vector<unsigned short>::push_back[abi:ne200100](&v4->_indices.__begin_, ([v27 indices] + v23));

      v23 += 2;
    }

    v28 = 0;
    for (k = 0; ; ++k)
    {
      v30 = [v7 objectAtIndexedSubscript:0];
      v31 = k < [v30 patchDataLength];

      if (!v31)
      {
        break;
      }

      v32 = [v7 objectAtIndexedSubscript:0];
      std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&v4->_patchData, ([v32 patchData] + v28));

      v28 += 8;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end