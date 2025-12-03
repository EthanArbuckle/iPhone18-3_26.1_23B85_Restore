@interface RAPLookAroundContextImpl
- (RAPLookAroundContextImpl)initWithLookAroundView:(id)view;
@end

@implementation RAPLookAroundContextImpl

- (RAPLookAroundContextImpl)initWithLookAroundView:(id)view
{
  viewCopy = view;
  v22.receiver = self;
  v22.super_class = RAPLookAroundContextImpl;
  v5 = [(RAPLookAroundContextImpl *)&v22 init];
  if (v5)
  {
    snapshotImage = [viewCopy snapshotImage];
    v7 = UIImagePNGRepresentation(snapshotImage);

    lookAroundSnapshotImageData = v5->_lookAroundSnapshotImageData;
    v5->_lookAroundSnapshotImageData = v7;
    v9 = v7;

    muninViewState = [viewCopy muninViewState];
    toGEOPDMuninViewState = [muninViewState toGEOPDMuninViewState];
    reportedMuninViewState = v5->_reportedMuninViewState;
    v5->_reportedMuninViewState = toGEOPDMuninViewState;

    muninMarker = [viewCopy muninMarker];
    v5->_muninMetadataTileBuildId = [muninMarker buildId];
    v5->_muninImageDataId = [muninMarker pointId];
    visiblePlaceMUIDs = [viewCopy visiblePlaceMUIDs];
    reportedVisibleMUIDs = v5->_reportedVisibleMUIDs;
    v5->_reportedVisibleMUIDs = visiblePlaceMUIDs;

    visibleRoadLabels = [viewCopy visibleRoadLabels];
    reportedMuninRoadLabels = v5->_reportedMuninRoadLabels;
    v5->_reportedMuninRoadLabels = visibleRoadLabels;

    imageResources = [viewCopy imageResources];
    reportedMuninImageResources = v5->_reportedMuninImageResources;
    v5->_reportedMuninImageResources = imageResources;

    if ([viewCopy showsRoadLabels])
    {
      showsPointLabels = 1;
    }

    else
    {
      showsPointLabels = [viewCopy showsPointLabels];
    }

    v5->_lookAroundLabelsEnabled = showsPointLabels;
  }

  return v5;
}

@end