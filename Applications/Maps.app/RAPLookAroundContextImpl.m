@interface RAPLookAroundContextImpl
- (RAPLookAroundContextImpl)initWithLookAroundView:(id)a3;
@end

@implementation RAPLookAroundContextImpl

- (RAPLookAroundContextImpl)initWithLookAroundView:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RAPLookAroundContextImpl;
  v5 = [(RAPLookAroundContextImpl *)&v22 init];
  if (v5)
  {
    v6 = [v4 snapshotImage];
    v7 = UIImagePNGRepresentation(v6);

    lookAroundSnapshotImageData = v5->_lookAroundSnapshotImageData;
    v5->_lookAroundSnapshotImageData = v7;
    v9 = v7;

    v10 = [v4 muninViewState];
    v11 = [v10 toGEOPDMuninViewState];
    reportedMuninViewState = v5->_reportedMuninViewState;
    v5->_reportedMuninViewState = v11;

    v13 = [v4 muninMarker];
    v5->_muninMetadataTileBuildId = [v13 buildId];
    v5->_muninImageDataId = [v13 pointId];
    v14 = [v4 visiblePlaceMUIDs];
    reportedVisibleMUIDs = v5->_reportedVisibleMUIDs;
    v5->_reportedVisibleMUIDs = v14;

    v16 = [v4 visibleRoadLabels];
    reportedMuninRoadLabels = v5->_reportedMuninRoadLabels;
    v5->_reportedMuninRoadLabels = v16;

    v18 = [v4 imageResources];
    reportedMuninImageResources = v5->_reportedMuninImageResources;
    v5->_reportedMuninImageResources = v18;

    if ([v4 showsRoadLabels])
    {
      v20 = 1;
    }

    else
    {
      v20 = [v4 showsPointLabels];
    }

    v5->_lookAroundLabelsEnabled = v20;
  }

  return v5;
}

@end