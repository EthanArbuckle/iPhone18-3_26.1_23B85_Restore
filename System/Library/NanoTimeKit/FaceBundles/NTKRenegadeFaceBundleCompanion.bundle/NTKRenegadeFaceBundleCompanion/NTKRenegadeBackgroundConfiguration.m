@interface NTKRenegadeBackgroundConfiguration
+ (id)_snapshotBezierPathWithDataAssetName:(id)a3 quiltFrame:(CGRect)a4;
+ (id)interpolatedConfigurationWithFraction:(double)a3 fromConfiguration:(id)a4 toConfiguration:(id)a5;
+ (id)snapshotConfigurationWithBoundingFrame:(CGRect)a3 complicationEdgeInsets:(UIEdgeInsets)a4;
- (CGRect)bottomQuiltMaxBoundingRect;
- (CGRect)bottomQuiltMinBoundingRect;
- (CGRect)topQuiltMaxBoundingRect;
- (CGRect)topQuiltMinBoundingRect;
- (_BYTE)initWithTopQuiltPieceOverlapsBottom:(double)a3 randomizationSeedValue:(double)a4 topQuiltMinBoundingRect:(double)a5 topQuiltMaxBoundingRect:(double)a6 bottomQuiltMinBoundingRect:(double)a7 bottomQuiltMaxBoundingRect:(double)a8 lineVariance:(double)a9 quiltOverlap:(uint64_t)a10;
- (id)_generateVariationValuesForQuiltPieceWithTopLeftPoint:(CGPoint)a3 topRightPoint:(CGPoint)a4 bottomLeftPoint:(CGPoint)a5 bottomRightPoint:(CGPoint)a6 variance:(double)a7;
- (id)_quiltVariationValuesForSideLength:(double)a3 variance:(double)a4 fromKeyFraction:(double)a5 toKeyFraction:(double)a6;
- (id)description;
- (void)_generateQuiltPaths;
@end

@implementation NTKRenegadeBackgroundConfiguration

- (_BYTE)initWithTopQuiltPieceOverlapsBottom:(double)a3 randomizationSeedValue:(double)a4 topQuiltMinBoundingRect:(double)a5 topQuiltMaxBoundingRect:(double)a6 bottomQuiltMinBoundingRect:(double)a7 bottomQuiltMaxBoundingRect:(double)a8 lineVariance:(double)a9 quiltOverlap:(uint64_t)a10
{
  v39.receiver = a1;
  v39.super_class = NTKRenegadeBackgroundConfiguration;
  v36 = objc_msgSendSuper2(&v39, "init");
  v37 = v36;
  if (v36)
  {
    v36[48] = a11;
    *(v36 + 7) = a12;
    *(v36 + 10) = a2;
    *(v36 + 11) = a3;
    *(v36 + 12) = a4;
    *(v36 + 13) = a5;
    *(v36 + 14) = a6;
    *(v36 + 15) = a7;
    *(v36 + 16) = a8;
    *(v36 + 17) = a9;
    *(v36 + 18) = a17;
    *(v36 + 19) = a18;
    *(v36 + 20) = a19;
    *(v36 + 21) = a20;
    *(v36 + 22) = a21;
    *(v36 + 23) = a22;
    *(v36 + 24) = a23;
    *(v36 + 25) = a24;
    *(v36 + 8) = a25;
    *(v36 + 9) = a26;
    [v36 _generateQuiltPaths];
  }

  return v37;
}

- (void)_generateQuiltPaths
{
  randomizer = self->_randomizer;
  if (randomizer)
  {
    [(NTKRenegadeSeededRandomizer *)randomizer reset];
  }

  else
  {
    v4 = [NTKRenegadeSeededRandomizer randomizerWithSeedValue:self->_randomizationSeedValue];
    v5 = self->_randomizer;
    self->_randomizer = v4;
  }

  x = self->_topQuiltMaxBoundingRect.origin.x;
  y = self->_topQuiltMaxBoundingRect.origin.y;
  width = self->_topQuiltMaxBoundingRect.size.width;
  height = self->_topQuiltMaxBoundingRect.size.height;
  v11 = self->_topQuiltMinBoundingRect.origin.x;
  v10 = self->_topQuiltMinBoundingRect.origin.y;
  v12 = self->_topQuiltMinBoundingRect.size.height;
  v95 = self->_topQuiltMinBoundingRect.size.width;
  v113.origin.x = x;
  v113.origin.y = y;
  v113.size.width = width;
  v113.size.height = height;
  MinX = CGRectGetMinX(v113);
  v114.origin.x = x;
  v114.origin.y = y;
  v114.size.width = width;
  v114.size.height = height;
  v109 = fmax(CGRectGetMinY(v114), 0.0);
  v115.origin.x = v11;
  v115.origin.y = v10;
  v115.size.width = v95;
  v115.size.height = v12;
  v89 = CGRectGetMinX(v115);
  v116.origin.x = v11;
  v116.origin.y = v10;
  v116.size.width = v95;
  v116.size.height = v12;
  v106 = fmax(CGRectGetMinY(v116), 0.0);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer pointBetweenFirstPoint:MinX secondPoint:v109, v89];
  v98 = v14;
  v99 = v13;
  v117.origin.x = x;
  v117.origin.y = y;
  v117.size.width = width;
  v117.size.height = height;
  MaxX = CGRectGetMaxX(v117);
  v118.origin.x = x;
  v118.origin.y = y;
  v118.size.width = width;
  v118.size.height = height;
  MaxY = CGRectGetMaxY(v118);
  v119.origin.x = v11;
  v119.origin.y = v10;
  v119.size.width = v95;
  v119.size.height = v12;
  v83 = CGRectGetMaxX(v119);
  v120.origin.x = v11;
  v120.origin.y = v10;
  v120.size.width = v95;
  v120.size.height = v12;
  CGRectGetMaxY(v120);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer pointBetweenFirstPoint:MaxX secondPoint:v109, v83, v106];
  v96 = v16;
  v97 = v15;
  v17 = self->_bottomQuiltMaxBoundingRect.origin.x;
  v18 = self->_bottomQuiltMaxBoundingRect.origin.y;
  v19 = self->_bottomQuiltMaxBoundingRect.size.width;
  v20 = self->_bottomQuiltMaxBoundingRect.size.height;
  v21 = self->_bottomQuiltMinBoundingRect.origin.x;
  v22 = self->_bottomQuiltMinBoundingRect.origin.y;
  v24 = self->_bottomQuiltMinBoundingRect.size.width;
  v23 = self->_bottomQuiltMinBoundingRect.size.height;
  v121.origin.x = v17;
  v121.origin.y = v18;
  v121.size.width = v19;
  v121.size.height = v20;
  v110 = CGRectGetMinX(v121);
  v122.origin.x = v17;
  v122.origin.y = v18;
  v122.size.width = v19;
  v122.size.height = v20;
  MinY = CGRectGetMinY(v122);
  v123.origin.x = v17;
  v123.origin.y = v18;
  v123.size.width = v19;
  v123.size.height = v20;
  v88 = CGRectGetMaxX(v123);
  v124.origin.x = v17;
  v124.origin.y = v18;
  v124.size.width = v19;
  v124.size.height = v20;
  v93 = CGRectGetMaxY(v124);
  v125.origin.x = v21;
  v125.origin.y = v22;
  v125.size.width = v24;
  v125.size.height = v23;
  v107 = CGRectGetMinX(v125);
  v126.origin.x = v21;
  v126.origin.y = v22;
  v126.size.width = v24;
  v126.size.height = v23;
  CGRectGetMinY(v126);
  v127.origin.x = v21;
  v127.origin.y = v22;
  v127.size.width = v24;
  v127.size.height = v23;
  v104 = CGRectGetMaxX(v127);
  v128.origin.x = v21;
  v128.origin.y = v22;
  v128.size.width = v24;
  v128.size.height = v23;
  v92 = CGRectGetMaxY(v128);
  lineVariance = self->_lineVariance;
  v81 = lineVariance + self->_quiltOverlap;
  v25 = MaxY - v81 - (MinY + v81);
  v26 = MinY + v81 + v25 * 0.3;
  v27 = MaxY - v81 + v25 * -0.3;
  v28 = +[CLKDevice currentDevice];
  [v28 screenBounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v129.origin.x = v30;
  v129.origin.y = v32;
  v129.size.width = v34;
  v129.size.height = v36;
  v37 = CGRectGetMinX(v129);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v26 secondValue:v27];
  v39 = v38;
  v130.origin.x = v30;
  v130.origin.y = v32;
  v130.size.width = v34;
  v130.size.height = v36;
  v40 = CGRectGetMaxX(v130);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v26 secondValue:v27];
  v42 = v41;
  v43 = NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v41, MinX);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v43 secondValue:NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v89)];
  v101 = v44;
  v45 = NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v83);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v45 secondValue:NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, MaxX)];
  v90 = v46;
  v47 = NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v110);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v47 secondValue:NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v107)];
  v86 = v48;
  v49 = NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v104);
  [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v49 secondValue:NTKRenegadeHorizontalFractionOnLine(v37, v39, v40, v42, v88)];
  v51 = v50;
  v52 = NTKRenegadeTangentialPointFromLine(v37, v39, v40, v42, v101, v81 * 0.0);
  v78 = v53;
  v80 = v52;
  v54 = NTKRenegadeTangentialPointFromLine(v37, v39, v40, v42, v90, v81 * 0.0);
  v76 = v55;
  v102 = NTKRenegadeTangentialPointFromLine(v37, v39, v40, v42, v86, v81 * 0.5);
  v91 = v56;
  v57 = NTKRenegadeTangentialPointFromLine(v37, v39, v40, v42, v51, v81 * 0.5);
  v84 = v58;
  v87 = v57;
  [(NTKRenegadeSeededRandomizer *)self->_randomizer pointBetweenFirstPoint:v110 secondPoint:v93, v107, v92];
  v108 = v59;
  v82 = v60;
  [(NTKRenegadeSeededRandomizer *)self->_randomizer pointBetweenFirstPoint:v104 secondPoint:v92, v88, v93];
  v105 = v61;
  v94 = v62;
  v63 = [(NTKRenegadeBackgroundConfiguration *)self _generateVariationValuesForQuiltPieceWithTopLeftPoint:v99 topRightPoint:v98 bottomLeftPoint:v97 bottomRightPoint:v96 variance:v80, v78, v54, v76, *&lineVariance];
  v64 = [v63 objectForKey:&off_10AF8];
  v65 = [v63 objectForKey:&off_10B10];
  v66 = [v63 objectForKey:&off_10B28];
  v67 = [v63 objectForKey:&off_10B40];
  v68 = NTKRenegadeQuiltPieceBezierPath(v64, v65, v66, v67, v99, v98, v97, v96, v80, v78, v54, v76);
  topQuiltPath = self->_topQuiltPath;
  self->_topQuiltPath = v68;

  v70 = [(NTKRenegadeBackgroundConfiguration *)self _generateVariationValuesForQuiltPieceWithTopLeftPoint:v99 topRightPoint:v98 bottomLeftPoint:v97 bottomRightPoint:v96 variance:v80, v78, v54, v76, *&lineVariance];
  v111 = [v70 objectForKey:&off_10AF8];

  v71 = [v70 objectForKey:&off_10B10];

  v72 = [v70 objectForKey:&off_10B28];

  v73 = [v70 objectForKey:&off_10B40];

  v74 = NTKRenegadeQuiltPieceBezierPath(v111, v71, v72, v73, v102, v91, v87, v84, v108, v82, v105, v94);
  bottomQuiltPath = self->_bottomQuiltPath;
  self->_bottomQuiltPath = v74;
}

- (id)_generateVariationValuesForQuiltPieceWithTopLeftPoint:(CGPoint)a3 topRightPoint:(CGPoint)a4 bottomLeftPoint:(CGPoint)a5 bottomRightPoint:(CGPoint)a6 variance:(double)a7
{
  y = a5.y;
  x = a5.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = [(NTKRenegadeSeededRandomizer *)self->_randomizer unsignedLongValue];
  v12 = ((v11 / 0xA) + 2 * ((v11 / 0xA * 0x199999999999999AuLL) >> 64)) & 3;
  v13 = 1.0;
  v14 = 0.0;
  if (v12 <= 1)
  {
    if ((((v11 / 0xA) + 2 * ((v11 / 0xA * 0x199999999999999AuLL) >> 64)) & 3) == 0)
    {
      v15 = 0;
      v13 = 0.95;
      v16 = 0.05;
LABEL_8:
      v27 = 1.0;
      goto LABEL_10;
    }

    v15 = 1;
LABEL_7:
    v16 = 0.0;
    goto LABEL_8;
  }

  if (v12 == 3)
  {
    v15 = 0;
    v14 = 0.05;
    goto LABEL_7;
  }

  v15 = 0;
  v27 = 0.95;
  v16 = 0.0;
LABEL_10:
  v17 = [(NTKRenegadeBackgroundConfiguration *)self _quiltVariationValuesForSideLength:NTKRenegadeLengthBetweenPoints(x variance:y fromKeyFraction:v9 toKeyFraction:v8), a7, v14, v13];
  v18 = NTKRenegadeLengthBetweenPoints(v9, v8, a4.x, a4.y);
  if (v15)
  {
    v19 = 0.95;
  }

  else
  {
    v19 = 1.0;
  }

  if (v15)
  {
    v20 = 0.05;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [(NTKRenegadeBackgroundConfiguration *)self _quiltVariationValuesForSideLength:v18 variance:a7 fromKeyFraction:v16 toKeyFraction:v19, *&x];
  v22 = [(NTKRenegadeBackgroundConfiguration *)self _quiltVariationValuesForSideLength:NTKRenegadeLengthBetweenPoints(a4.x variance:a4.y fromKeyFraction:a6.x toKeyFraction:a6.y), a7, v20, v27];
  v23 = [(NTKRenegadeBackgroundConfiguration *)self _quiltVariationValuesForSideLength:NTKRenegadeLengthBetweenPoints(a6.x variance:a6.y fromKeyFraction:v26 toKeyFraction:y), a7, v14, v13];
  v31[0] = &off_10AF8;
  v31[1] = &off_10B28;
  v32[0] = v17;
  v32[1] = v21;
  v31[2] = &off_10B10;
  v31[3] = &off_10B40;
  v32[2] = v22;
  v32[3] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v24;
}

- (id)_quiltVariationValuesForSideLength:(double)a3 variance:(double)a4 fromKeyFraction:(double)a5 toKeyFraction:(double)a6
{
  v10 = a4 * 0.1;
  v11 = objc_opt_new();
  v12 = [NSNumber numberWithDouble:a5];
  v23[0] = v12;
  v24[0] = &off_10CD8;
  v13 = [NSNumber numberWithDouble:a6];
  v23[1] = v13;
  v24[1] = &off_10CD8;
  v14 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v11 addEntriesFromDictionary:v14];

  v15 = 1;
  v16 = 0.0;
  for (i = 1; i != 6; ++i)
  {
    if (a4 - v16 <= v10)
    {
      v15 ^= 1u;
    }

    if (v15)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0.0;
    }

    [(NTKRenegadeSeededRandomizer *)self->_randomizer floatValueBetweenFirstValue:v16 secondValue:v18];
    v16 = v19;
    v20 = [NSNumber numberWithDouble:v19];
    v21 = [NSNumber numberWithDouble:i / 6.0];
    [v11 setObject:v20 forKeyedSubscript:v21];
  }

  return v11;
}

- (id)description
{
  if (self->_randomizationSeedValue || self->_isSnapshotConfiguration)
  {
    v13.receiver = self;
    v13.super_class = NTKRenegadeBackgroundConfiguration;
    v3 = [(NTKRenegadeBackgroundConfiguration *)&v13 description];
    topQuiltPieceOverlapsBottom = self->_topQuiltPieceOverlapsBottom;
    randomizationSeedValue = self->_randomizationSeedValue;
    v6 = NSStringFromCGRect(self->_topQuiltMinBoundingRect);
    v7 = NSStringFromCGRect(self->_topQuiltMaxBoundingRect);
    v8 = NSStringFromCGRect(self->_bottomQuiltMinBoundingRect);
    v9 = NSStringFromCGRect(self->_bottomQuiltMaxBoundingRect);
    v10 = [NSString stringWithFormat:@"%@ topQuiltPieceOverlapsBottom: %d, randomizationSeedValue: %lul, topQuiltMinBoundingRect: %@, topQuiltMaxBoundingRect: %@, bottomQuiltMinBoundingRect: %@, bottomQuiltMaxBoundingRect: %@, lineVariance: %f, quiltOverlap: %f, isSnapshotConfiguration: %d", v3, topQuiltPieceOverlapsBottom, randomizationSeedValue, v6, v7, v8, v9, *&self->_lineVariance, *&self->_quiltOverlap, self->_isSnapshotConfiguration];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKRenegadeBackgroundConfiguration;
    v3 = [(NTKRenegadeBackgroundConfiguration *)&v14 description];
    v12 = self->_topQuiltPieceOverlapsBottom;
    [(UIBezierPath *)self->_topQuiltPath bounds];
    v6 = NSStringFromCGRect(v16);
    [(UIBezierPath *)self->_bottomQuiltPath bounds];
    v7 = NSStringFromCGRect(v17);
    v10 = [NSString stringWithFormat:@"%@ interpolated configuration topQuiltPieceOverlapsBottom: %d, topQuiltPath.bounds: %@, bottomQuiltPath.bounds: %@", v3, v12, v6, v7];
  }

  return v10;
}

+ (id)interpolatedConfigurationWithFraction:(double)a3 fromConfiguration:(id)a4 toConfiguration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a1 new];
  v10 = [v7 topQuiltPath];
  v11 = [v8 topQuiltPath];
  v12 = NTKInterpolateBetweenBezierPaths();
  v13 = v9[2];
  v9[2] = v12;

  v14 = [v7 bottomQuiltPath];
  v15 = [v8 bottomQuiltPath];
  v16 = NTKInterpolateBetweenBezierPaths();
  v17 = v9[3];
  v9[3] = v16;

  v9[7] = 0;
  LODWORD(v14) = [v8 topQuiltPieceOverlapsBottom];

  if (v14)
  {
    v18 = [v7 topQuiltPieceOverlapsBottom];
  }

  else
  {
    v18 = 0;
  }

  *(v9 + 48) = v18;

  return v9;
}

+ (id)snapshotConfigurationWithBoundingFrame:(CGRect)a3 complicationEdgeInsets:(UIEdgeInsets)a4
{
  v5 = NTKRenegadeHorizontallyCenteredFrameWithEdgeInsets(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.top, a4.left, a4.bottom);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [a1 new];
  v13 = [a1 _snapshotBezierPathWithDataAssetName:@"SnapshotVectorHour" quiltFrame:{v5, v7, v9, v11}];
  v14 = v12[2];
  v12[2] = v13;

  v15 = [a1 _snapshotBezierPathWithDataAssetName:@"SnapshotVectorMinute" quiltFrame:{v5, v7, v9, v11}];
  v16 = v12[3];
  v12[3] = v15;

  *(v12 + 24) = 256;
  v12[7] = 0;

  return v12;
}

+ (id)_snapshotBezierPathWithDataAssetName:(id)a3 quiltFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [[NSDataAsset alloc] initWithName:v8 bundle:v9];

  v11 = NTKRenegadeBezierPathFromSVGDataAsset(v10, x, y, width, height);

  return v11;
}

- (CGRect)topQuiltMinBoundingRect
{
  x = self->_topQuiltMinBoundingRect.origin.x;
  y = self->_topQuiltMinBoundingRect.origin.y;
  width = self->_topQuiltMinBoundingRect.size.width;
  height = self->_topQuiltMinBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)topQuiltMaxBoundingRect
{
  x = self->_topQuiltMaxBoundingRect.origin.x;
  y = self->_topQuiltMaxBoundingRect.origin.y;
  width = self->_topQuiltMaxBoundingRect.size.width;
  height = self->_topQuiltMaxBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bottomQuiltMinBoundingRect
{
  x = self->_bottomQuiltMinBoundingRect.origin.x;
  y = self->_bottomQuiltMinBoundingRect.origin.y;
  width = self->_bottomQuiltMinBoundingRect.size.width;
  height = self->_bottomQuiltMinBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bottomQuiltMaxBoundingRect
{
  x = self->_bottomQuiltMaxBoundingRect.origin.x;
  y = self->_bottomQuiltMaxBoundingRect.origin.y;
  width = self->_bottomQuiltMaxBoundingRect.size.width;
  height = self->_bottomQuiltMaxBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end