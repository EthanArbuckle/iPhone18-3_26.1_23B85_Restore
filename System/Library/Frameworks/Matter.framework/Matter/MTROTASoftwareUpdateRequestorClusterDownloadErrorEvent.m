@interface MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent
- (MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent

- (MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent)init
{
  v9.receiver = self;
  v9.super_class = MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent;
  v2 = [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    softwareVersion = v2->_softwareVersion;
    v2->_softwareVersion = &unk_284C3E588;

    bytesDownloaded = v3->_bytesDownloaded;
    v3->_bytesDownloaded = &unk_284C3E588;

    progressPercent = v3->_progressPercent;
    v3->_progressPercent = 0;

    platformCode = v3->_platformCode;
    v3->_platformCode = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent);
  v5 = [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)self softwareVersion];
  [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)v4 setSoftwareVersion:v5];

  v6 = [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)self bytesDownloaded];
  [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)v4 setBytesDownloaded:v6];

  v7 = [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)self progressPercent];
  [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)v4 setProgressPercent:v7];

  v8 = [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)self platformCode];
  [(MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *)v4 setPlatformCode:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: softwareVersion:%@ bytesDownloaded:%@; progressPercent:%@; platformCode:%@; >", v5, self->_softwareVersion, self->_bytesDownloaded, self->_progressPercent, self->_platformCode];;

  return v6;
}

@end