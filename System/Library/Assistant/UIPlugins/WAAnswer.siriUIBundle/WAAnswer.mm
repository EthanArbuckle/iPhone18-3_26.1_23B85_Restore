void sub_1AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v3 CGImage], 0, 1.0);

    v6 = [*(a1 + 32) imageInverted];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [*(a1 + 40) _blendedImageFromImage:v5];
      if (v8)
      {
        v9 = v8;
        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          [v9 size];
          v12 = NSStringFromCGSize(v29);
          [v5 size];
          v13 = NSStringFromCGSize(v30);
          v14 = *(a1 + 48);
          v17 = 136316418;
          v18 = "[WADetailedSnippetViewController wasAddedToTranscript]_block_invoke";
          v19 = 2112;
          v20 = v9;
          v21 = 2112;
          v22 = v12;
          v23 = 2112;
          v24 = v5;
          v25 = 2112;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s Redrew %@ (%@) from %@ (%@) at %@", &v17, 0x3Eu);
        }
      }

      else
      {
        v9 = v5;
        v16 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          sub_2C84(v9, v16, a1);
        }
      }
    }

    else
    {
      v9 = v5;
    }

    [*(a1 + 56) setImage:v9 forKey:*(a1 + 64)];
    [*(a1 + 72) setImage:v9];
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_2D64(a1, v15);
    }

    v9 = 0;
    v5 = 0;
  }

  dispatch_group_leave(*(a1 + 80));
}

void sub_1D04(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  [*(a1 + 32) setLoading:0];
  v3 = [*(a1 + 32) delegate];
  [v3 siriSnippetViewControllerViewDidLoad:*(a1 + 32)];
}

void sub_2C84(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [a1 size];
  v6 = NSStringFromCGSize(v16);
  v7 = *(a3 + 48);
  v8 = 136315906;
  v9 = "[WADetailedSnippetViewController wasAddedToTranscript]_block_invoke";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%s Could not produce redrawn image from %@ (%@), at %@", &v8, 0x2Au);
}

void sub_2D64(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 136315650;
  v4 = "[WADetailedSnippetViewController wasAddedToTranscript]_block_invoke";
  v5 = 2112;
  v6 = 0;
  v7 = 2112;
  v8 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s Failed to download image %@ at URL %@", &v3, 0x20u);
}