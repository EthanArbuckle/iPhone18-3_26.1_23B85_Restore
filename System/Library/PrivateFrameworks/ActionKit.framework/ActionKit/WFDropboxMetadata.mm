@interface WFDropboxMetadata
- (id)wfFileType;
- (id)wfLastModifiedDate;
@end

@implementation WFDropboxMetadata

- (id)wfFileType
{
  v3 = [(WFDropboxMetadata *)self wfIsDirectory];
  v4 = MEMORY[0x277D79F68];
  if (v3)
  {
    v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D80]];
  }

  else
  {
    v6 = [(WFDropboxMetadata *)self name];
    v5 = [v4 typeFromFilename:v6];
  }

  return v5;
}

- (id)wfLastModifiedDate
{
  v3 = [(WFDropboxMetadata *)self clientModifiedDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFDropboxMetadata *)self serverModifiedDate];
  }

  v6 = v5;

  return v6;
}

@end