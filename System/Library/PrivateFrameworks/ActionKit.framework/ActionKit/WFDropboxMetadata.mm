@interface WFDropboxMetadata
- (id)wfFileType;
- (id)wfLastModifiedDate;
@end

@implementation WFDropboxMetadata

- (id)wfFileType
{
  wfIsDirectory = [(WFDropboxMetadata *)self wfIsDirectory];
  v4 = MEMORY[0x277D79F68];
  if (wfIsDirectory)
  {
    v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D80]];
  }

  else
  {
    name = [(WFDropboxMetadata *)self name];
    v5 = [v4 typeFromFilename:name];
  }

  return v5;
}

- (id)wfLastModifiedDate
{
  clientModifiedDate = [(WFDropboxMetadata *)self clientModifiedDate];
  v4 = clientModifiedDate;
  if (clientModifiedDate)
  {
    serverModifiedDate = clientModifiedDate;
  }

  else
  {
    serverModifiedDate = [(WFDropboxMetadata *)self serverModifiedDate];
  }

  v6 = serverModifiedDate;

  return v6;
}

@end