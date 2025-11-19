@interface PKInputPointPredictionFilter
- (void)addInputPoint:(id *)a3;
- (void)resetFilter;
@end

@implementation PKInputPointPredictionFilter

- (void)addInputPoint:(id *)a3
{
  if (self)
  {
    predictionTimeInterval = self->_predictionTimeInterval;
    if (predictionTimeInterval == 0.0)
    {
      p_filteredPoint = &self->super._filteredPoint;

      memmove(p_filteredPoint, a3, 0x88uLL);
    }

    else
    {
      ++self->super._numInputPoints;
      var7 = a3->var7;
      v8 = predictionTimeInterval * 0.5 + var7;
      v9 = predictionTimeInterval + var7;
      predictor = self->_predictor;
      if (!predictor)
      {
        v11 = objc_alloc_init(PKInputPointPredictor);
        v12 = self->_predictor;
        self->_predictor = v11;

        predictor = self->_predictor;
      }

      v13 = *&a3->var13;
      v37 = *&a3->var11;
      v38 = v13;
      var15 = a3->var15;
      v14 = *&a3->var5;
      v33 = *&a3->var3;
      v34 = v14;
      v15 = *&a3->var9;
      v35 = *&a3->var7;
      v36 = v15;
      v16 = *&a3->var1;
      var0 = a3->var0;
      v32 = v16;
      [(PKInputPointPredictor *)predictor predictedPointForPoint:&v40 timestamp:v8];
      v17 = v47;
      *&self->_halfPredictionTimeIntervalPoint.distance = v46;
      *&self->_halfPredictionTimeIntervalPoint.rollAngle = v17;
      self->_halfPredictionTimeIntervalPoint.estimatedActiveInputPropertiesExpectingUpdates = v48;
      v18 = v43;
      *&self->_halfPredictionTimeIntervalPoint.altitude = v42;
      *&self->_halfPredictionTimeIntervalPoint.directionAngle = v18;
      v19 = v45;
      *&self->_halfPredictionTimeIntervalPoint.timestamp = v44;
      *&self->_halfPredictionTimeIntervalPoint.estimationUpdateIndex = v19;
      v20 = v41;
      self->_halfPredictionTimeIntervalPoint.var0 = v40;
      *&self->_halfPredictionTimeIntervalPoint.force = v20;
      v21 = self->_predictor;
      v22 = *&a3->var13;
      v37 = *&a3->var11;
      v38 = v22;
      var15 = a3->var15;
      v23 = *&a3->var5;
      v33 = *&a3->var3;
      v34 = v23;
      v24 = *&a3->var9;
      v35 = *&a3->var7;
      v36 = v24;
      v25 = *&a3->var1;
      var0 = a3->var0;
      v32 = v25;
      [(PKInputPointPredictor *)v21 predictedPointAtTimestamp:&v40 defaultPoint:v9];
      v26 = v47;
      *&self->_fullPredictionTimeIntervalPoint.distance = v46;
      *&self->_fullPredictionTimeIntervalPoint.rollAngle = v26;
      self->_fullPredictionTimeIntervalPoint.estimatedActiveInputPropertiesExpectingUpdates = v48;
      v27 = v43;
      *&self->_fullPredictionTimeIntervalPoint.altitude = v42;
      *&self->_fullPredictionTimeIntervalPoint.directionAngle = v27;
      v28 = v45;
      *&self->_fullPredictionTimeIntervalPoint.timestamp = v44;
      *&self->_fullPredictionTimeIntervalPoint.estimationUpdateIndex = v28;
      v29 = v41;
      self->_fullPredictionTimeIntervalPoint.var0 = v40;
      *&self->_fullPredictionTimeIntervalPoint.force = v29;
      if (self->_useHalfPredictionTimeInterval)
      {
        p_halfPredictionTimeIntervalPoint = &self->_halfPredictionTimeIntervalPoint;
      }

      else
      {
        p_halfPredictionTimeIntervalPoint = &self->_fullPredictionTimeIntervalPoint;
      }

      memmove(&self->super._filteredPoint, p_halfPredictionTimeIntervalPoint, 0x88uLL);
    }
  }
}

- (void)resetFilter
{
  v4.receiver = self;
  v4.super_class = PKInputPointPredictionFilter;
  [(PKInputPointBaseFilter *)&v4 resetFilter];
  predictor = self->_predictor;
  if (predictor)
  {
    predictor->_numPoints = 0;
  }
}

@end