@interface CRLProgressStage
- (CRLProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps inContext:(id)context;
- (double)overallProgress;
- (id)initRootStageInContext:(id)context;
- (void)dealloc;
- (void)setProgress:(double)m_totalSteps;
@end

@implementation CRLProgressStage

- (id)initRootStageInContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CRLProgressStage;
  v6 = [(CRLProgressStage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_101463B60;
    v8 = *(v6 + 6);
    *(v6 + 5) = 0x3FF0000000000000;
    *(v6 + 6) = 0;

    objc_storeStrong(v7 + 7, context);
  }

  return v7;
}

- (CRLProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps inContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = CRLProgressStage;
  v10 = [(CRLProgressStage *)&v15 init];
  if (v10)
  {
    currentStage = [contextCopy currentStage];
    m_parentStage = v10->m_parentStage;
    v10->m_parentStage = currentStage;

    v10->m_currentPosition = 0.0;
    v10->m_totalSteps = steps;
    v10->m_stepsInParent = takingSteps;
    [(CRLProgressStage *)v10->m_parentStage currentPosition];
    v10->m_startInParent = v13;
    v10->m_nextSubStageParentSize = 1.0;
    objc_storeStrong(&v10->m_context, context);
  }

  return v10;
}

- (void)dealloc
{
  m_parentStage = self->m_parentStage;
  self->m_parentStage = 0;

  v4.receiver = self;
  v4.super_class = CRLProgressStage;
  [(CRLProgressStage *)&v4 dealloc];
}

- (void)setProgress:(double)m_totalSteps
{
  v4 = m_totalSteps - self->m_totalSteps;
  if (v4 <= 0.0000001)
  {
    if (v4 > 0.0)
    {
      m_totalSteps = self->m_totalSteps;
    }
  }

  else
  {
    selfCopy = self;
    do
    {
      parentStage = [(CRLProgressStage *)selfCopy parentStage];

      selfCopy = parentStage;
    }

    while (parentStage);
    m_totalSteps = self->m_totalSteps;
  }

  m_currentPosition = self->m_currentPosition;
  if (m_currentPosition - m_totalSteps <= 0.0 || m_currentPosition - m_totalSteps > 0.0000001)
  {
    v9 = m_totalSteps;
  }

  else
  {
    v9 = self->m_currentPosition;
  }

  if (m_currentPosition != v9)
  {
    self->m_currentPosition = v9;
    m_parentStage = self->m_parentStage;
    if (m_parentStage)
    {
      v11 = self->m_startInParent + v9 / self->m_totalSteps * self->m_stepsInParent;

      [(CRLProgressStage *)m_parentStage setProgress:v11];
    }

    else
    {
      m_context = self->m_context;
      [(CRLProgressStage *)self overallProgress];

      [(CRLProgressContext *)m_context reportProgress:v9 overallProgress:v13];
    }
  }
}

- (double)overallProgress
{
  if (!self->m_parentStage)
  {
    return self->m_currentPosition / self->m_totalSteps;
  }

  [(CRLProgressStage *)self->m_parentStage overallProgress];
  return result;
}

@end