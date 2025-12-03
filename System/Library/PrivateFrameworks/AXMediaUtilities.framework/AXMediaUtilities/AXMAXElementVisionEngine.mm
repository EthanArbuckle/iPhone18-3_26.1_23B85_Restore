@interface AXMAXElementVisionEngine
- (AXMAXElementDetectorNode)axElementDetector;
- (AXMAXElementVisionEngine)initWithIdentifier:(id)identifier;
- (AXMBrailleEdgesDetectorNode)brailleEdgeDetector;
- (AXMIconClassDetectorNode)iconClassDetector;
- (AXMImageNode)imageNode;
- (AXMScreenCaptureNode)captureNode;
- (AXMTextDetectorNode)textDetector;
@end

@implementation AXMAXElementVisionEngine

- (AXMAXElementVisionEngine)initWithIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = AXMAXElementVisionEngine;
  v3 = [(AXMVisionEngine *)&v11 initWithIdentifier:identifier];
  [(AXMVisionEngine *)v3 setMaximumQueueSize:10];
  if (v3)
  {
    if ([(AXMVisionEngine *)v3 canAddSourceNodeClass:objc_opt_class()])
    {
      v4 = [(AXMVisionEngineNode *)[AXMScreenCaptureNode alloc] initWithIdentifier:@"screenCapture"];
      [(AXMVisionEngine *)v3 addSourceNode:v4];
      [(AXMAXElementVisionEngine *)v3 setCaptureNode:v4];
    }

    if ([(AXMVisionEngine *)v3 canAddSourceNodeClass:objc_opt_class()])
    {
      v5 = [(AXMVisionEngineNode *)[AXMImageNode alloc] initWithIdentifier:@"image"];
      [(AXMVisionEngine *)v3 addSourceNode:v5];
      [(AXMAXElementVisionEngine *)v3 setImageNode:v5];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v6 = [(AXMVisionEngineNode *)[AXMTextDetectorNode alloc] initWithIdentifier:@"text"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v6];
      [(AXMAXElementVisionEngine *)v3 setTextDetector:v6];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v7 = [(AXMMobileAssetEvaluationNode *)[AXMIconClassDetectorNode alloc] initWithIdentifier:@"iconClass"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v7];
      [(AXMAXElementVisionEngine *)v3 setIconClassDetector:v7];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v8 = [(AXMVisionEngineNode *)[AXMBrailleEdgesDetectorNode alloc] initWithIdentifier:@"brailleEdges"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v8];
      [(AXMAXElementVisionEngine *)v3 setBrailleEdgeDetector:v8];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v9 = [(AXMMobileAssetEvaluationNode *)[AXMAXElementDetectorNode alloc] initWithIdentifier:@"axElement"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v9];
      [(AXMAXElementVisionEngine *)v3 setAxElementDetector:v9];
    }
  }

  return v3;
}

- (AXMScreenCaptureNode)captureNode
{
  WeakRetained = objc_loadWeakRetained(&self->_captureNode);

  return WeakRetained;
}

- (AXMImageNode)imageNode
{
  WeakRetained = objc_loadWeakRetained(&self->_imageNode);

  return WeakRetained;
}

- (AXMTextDetectorNode)textDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_textDetector);

  return WeakRetained;
}

- (AXMIconClassDetectorNode)iconClassDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_iconClassDetector);

  return WeakRetained;
}

- (AXMAXElementDetectorNode)axElementDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_axElementDetector);

  return WeakRetained;
}

- (AXMBrailleEdgesDetectorNode)brailleEdgeDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_brailleEdgeDetector);

  return WeakRetained;
}

@end