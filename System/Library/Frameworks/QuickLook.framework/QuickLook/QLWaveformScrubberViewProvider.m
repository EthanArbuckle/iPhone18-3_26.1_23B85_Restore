@interface QLWaveformScrubberViewProvider
+ (void)generateWaveformForSize:(CGSize)a3 asset:(id)a4 updateHandler:(id)a5;
- (id)createFilmstripViewForVideoScrubberView:(id)a3;
@end

@implementation QLWaveformScrubberViewProvider

- (id)createFilmstripViewForVideoScrubberView:(id)a3
{
  v3 = [QLWaveformView alloc];
  v4 = [(QLWaveformView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v4;
}

+ (void)generateWaveformForSize:(CGSize)a3 asset:(id)a4 updateHandler:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v9 = a5;
  v10 = width * 0.25;
  v11 = MEMORY[0x277D43EF8];
  v12 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEFAULT, "Generating waveforms... #Waveform", buf, 2u);
  }

  if (v10)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __78__QLWaveformScrubberViewProvider_generateWaveformForSize_asset_updateHandler___block_invoke;
    v19 = &unk_278B57FB8;
    v20 = v9;
    v21 = v10;
    v13 = v8;
    v14 = &v16;
    v15 = *MEMORY[0x277CE5E48];
    *buf = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __QLWaveformDeterminePowerLevelsForAsset_block_invoke;
    v25 = &unk_278B58030;
    v27 = v14;
    v28 = v10;
    v29 = height;
    v26 = v13;
    [v13 loadTracksWithMediaType:v15 completionHandler:{buf, v16, v17, v18, v19}];
  }
}

@end