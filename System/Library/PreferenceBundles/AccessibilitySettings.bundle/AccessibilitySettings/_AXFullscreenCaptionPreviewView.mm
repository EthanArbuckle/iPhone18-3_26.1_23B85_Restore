@interface _AXFullscreenCaptionPreviewView
- (_AXFullscreenCaptionPreviewView)init;
@end

@implementation _AXFullscreenCaptionPreviewView

- (_AXFullscreenCaptionPreviewView)init
{
  v11.receiver = self;
  v11.super_class = _AXFullscreenCaptionPreviewView;
  v2 = [(_AXFullscreenCaptionPreviewView *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIImageView);
    cloudsView1 = v2->_cloudsView1;
    v2->_cloudsView1 = v3;

    [(_AXFullscreenCaptionPreviewView *)v2 addSubview:v2->_cloudsView1];
    [(UIImageView *)v2->_cloudsView1 setAutoresizingMask:18];
    [(UIImageView *)v2->_cloudsView1 setContentMode:2];
    [(UIImageView *)v2->_cloudsView1 setAlpha:1.0];
    [(UIImageView *)v2->_cloudsView1 setIsAccessibilityElement:0];
    v5 = objc_alloc_init(UIImageView);
    cloudsView2 = v2->_cloudsView2;
    v2->_cloudsView2 = v5;

    [(_AXFullscreenCaptionPreviewView *)v2 addSubview:v2->_cloudsView2];
    [(UIImageView *)v2->_cloudsView2 setAutoresizingMask:18];
    [(UIImageView *)v2->_cloudsView2 setContentMode:2];
    [(UIImageView *)v2->_cloudsView2 setAlpha:0.0];
    [(UIImageView *)v2->_cloudsView2 setIsAccessibilityElement:0];
    v7 = objc_alloc_init(AXCaptionSubtitlePreviewView);
    captionSubtitlePreviewView = v2->_captionSubtitlePreviewView;
    v2->_captionSubtitlePreviewView = v7;

    [(_AXFullscreenCaptionPreviewView *)v2 addSubview:v2->_captionSubtitlePreviewView];
    v9 = settingsLocString(@"SAMPLE_CAPTION_TEXT", @"Captioning");
    [(AXCaptionSubtitlePreviewView *)v2->_captionSubtitlePreviewView setText:v9];

    [(AXCaptionSubtitlePreviewView *)v2->_captionSubtitlePreviewView setAutoresizingMask:18];
    [(AXCaptionSubtitlePreviewView *)v2->_captionSubtitlePreviewView setIsAccessibilityElement:0];
  }

  return v2;
}

@end