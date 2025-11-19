@interface ASTUIDualMatrixCalibrationStrategy
- (ASTUIDualMatrixCalibrationStrategy)init;
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3;
- (id)calibratedArrayForGazePoint:(CGPoint)a3;
- (id)learnCalibrationForPoints:(id)a3;
- (void)captureGazeEnrollmentPoint:(id)a3;
- (void)learnCalibration;
- (void)reset;
@end

@implementation ASTUIDualMatrixCalibrationStrategy

- (ASTUIDualMatrixCalibrationStrategy)init
{
  v6.receiver = self;
  v6.super_class = ASTUIDualMatrixCalibrationStrategy;
  v2 = [(ASTUIDualMatrixCalibrationStrategy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    storedEnrollments = v2->_storedEnrollments;
    v2->_storedEnrollments = v3;
  }

  return v2;
}

- (id)calibratedArrayForGazePoint:(CGPoint)a3
{
  y = a3.y;
  [(ASTUIDualMatrixCalibrationStrategy *)self uncalibratedMiddleLineOfTheScreen];
  if (y > v5)
  {
    [(ASTUIDualMatrixCalibrationStrategy *)self bottomCalibrationMatrix];
  }

  else
  {
    [(ASTUIDualMatrixCalibrationStrategy *)self topCalibrationMatrix];
  }
  v6 = ;

  return v6;
}

- (void)captureGazeEnrollmentPoint:(id)a3
{
  v4 = a3;
  v6 = [(ASTUIDualMatrixCalibrationStrategy *)self storedEnrollments];
  v5 = [v4 positionName];
  [v6 setObject:v4 forKey:v5];
}

- (void)learnCalibration
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28532E060];
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28532E078];
  v7 = [(ASTUIDualMatrixCalibrationStrategy *)self storedEnrollments];
  v8 = [v7 allKeys];
  v9 = [v8 count];

  if (v9 < 5)
  {
    v19 = objc_opt_new();
    v20 = [v7 allValues];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_4;
    v22[3] = &unk_278CDC650;
    v23 = v19;
    v18 = v19;
    [v20 enumerateObjectsUsingBlock:v22];

    [(ASTUIDualMatrixCalibrationStrategy *)self setUncalibratedMiddleLineOfTheScreen:-1.0];
    v21 = [(ASTUIDualMatrixCalibrationStrategy *)self learnCalibrationForPoints:v18];
    [(ASTUIDualMatrixCalibrationStrategy *)self setBottomCalibrationMatrix:v21];
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke;
    v33[3] = &unk_278CDC600;
    v34 = v5;
    v10 = v3;
    v35 = v10;
    v36 = v6;
    v11 = v4;
    v37 = v11;
    [v7 enumerateKeysAndObjectsUsingBlock:v33];
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_2;
    v26[3] = &unk_278CDC628;
    v14 = v12;
    v27 = v14;
    v28 = &v29;
    [v10 enumerateObjectsUsingBlock:v26];
    [(ASTUIDualMatrixCalibrationStrategy *)self setUncalibratedMiddleLineOfTheScreen:v30[3]];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_3;
    v24[3] = &unk_278CDC650;
    v15 = v13;
    v25 = v15;
    [v11 enumerateObjectsUsingBlock:v24];
    v16 = [(ASTUIDualMatrixCalibrationStrategy *)self learnCalibrationForPoints:v14];
    [(ASTUIDualMatrixCalibrationStrategy *)self setTopCalibrationMatrix:v16];

    v17 = [(ASTUIDualMatrixCalibrationStrategy *)self learnCalibrationForPoints:v15];
    [(ASTUIDualMatrixCalibrationStrategy *)self setBottomCalibrationMatrix:v17];

    _Block_object_dispose(&v29, 8);
    v18 = v34;
  }
}

void __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([a1[4] containsObject:v6])
  {
    [a1[5] addObject:v5];
  }

  if ([a1[6] containsObject:v6])
  {
    [a1[7] addObject:v5];
  }
}

double __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  [v4 predictedPoint];
  v18[0] = v5;
  v18[1] = v6;
  v7 = [v3 valueWithBytes:v18 objCType:"{CGPoint=dd}"];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CCAE60];
  [v4 groundTruthPoint];
  v17[0] = v10;
  v17[1] = v11;
  v12 = [v9 valueWithBytes:v17 objCType:"{CGPoint=dd}"];
  [v8 setObject:v7 forKeyedSubscript:v12];

  [v4 predictedPoint];
  v14 = v13;

  v15 = *(*(a1 + 40) + 8);
  result = fmax(v14, *(v15 + 24));
  *(v15 + 24) = result;
  return result;
}

void __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  [v4 predictedPoint];
  v16[0] = v5;
  v16[1] = v6;
  v7 = [v3 valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CCAE60];
  [v4 groundTruthPoint];
  v11 = v10;
  v13 = v12;

  v15[0] = v11;
  v15[1] = v13;
  v14 = [v9 valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v8 setObject:v7 forKeyedSubscript:v14];
}

void __54__ASTUIDualMatrixCalibrationStrategy_learnCalibration__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  [v4 predictedPoint];
  v16[0] = v5;
  v16[1] = v6;
  v7 = [v3 valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CCAE60];
  [v4 groundTruthPoint];
  v11 = v10;
  v13 = v12;

  v15[0] = v11;
  v15[1] = v13;
  v14 = [v9 valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v8 setObject:v7 forKeyedSubscript:v14];
}

- (void)reset
{
  v3 = objc_opt_new();
  [(ASTUIDualMatrixCalibrationStrategy *)self setStoredEnrollments:v3];
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3
{
  v5.receiver = self;
  v5.super_class = ASTUIDualMatrixCalibrationStrategy;
  [(ASTUILinearMatrixCalibrationStrategy *)&v5 calibratedGazePointForGazePoint:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)learnCalibrationForPoints:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASTUIDualMatrixCalibrationStrategy;
  v3 = [(ASTUILinearMatrixCalibrationStrategy *)&v5 learnCalibrationForPoints:a3];

  return v3;
}

@end