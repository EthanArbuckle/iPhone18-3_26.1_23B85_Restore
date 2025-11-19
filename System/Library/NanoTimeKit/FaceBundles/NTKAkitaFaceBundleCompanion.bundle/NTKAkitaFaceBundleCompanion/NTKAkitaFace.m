@interface NTKAkitaFace
- (id)_faceDescription;
@end

@implementation NTKAkitaFace

- (id)_faceDescription
{
  v2 = [(NTKAkitaFace *)self _faceDescriptionKey];
  v3 = [NTKAkitaFaceBundle localizedStringForKey:v2 comment:@"FACE_STYLE_AKITA_DESCRIPTION"];

  return v3;
}

@end